#!/usr/bin/env python
# coding: utf-8

# In[19]:


import requests
from bs4 import BeautifulSoup
import csv
import mysql.connector
import pandas as pd


# In[20]:


# Target URL for Speedtest Global Index
url = "https://www.speedtest.net/global-index"

# Send a GET request and store the response
response = requests.get(url)

# Parse the response content using BeautifulSoup
soup = BeautifulSoup(response.content, "html.parser")

# Print a success message (optional)
print("Successfully downloaded and parsed the webpage!")


# In[27]:


# Function to scrape data from the website
def scrape_speedtest_data(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.content, "html.parser")
    
    mobile_data = []
    fixed_data = []
    
    # Scraping mobile broadband data
    mobile_div = soup.find("div", {"id": "column-mobileMedian"})
    if mobile_div:
        mobile_table = mobile_div.find("table", {"class": "list-results"})
        if mobile_table:
            for row in mobile_table.find_all("tr")[1:]:
                columns = row.find_all("td")
                if len(columns) >= 4:
                    rank = columns[0].text.strip()
                    country = columns[2].text.strip()
                    download_speed = columns[3].text.strip()
                    mobile_data.append({
                        "Rank": rank,
                        "Country": country,
                        "Download Speed (Mbps)": download_speed,
                    })

    # Scraping fixed broadband data
    fixed_div = soup.find("div", {"id": "column-fixedMedian"})
    if fixed_div:
        fixed_table = fixed_div.find("table", {"class": "list-results"})
        if fixed_table:
            for row in fixed_table.find_all("tr")[1:]:
                columns = row.find_all("td")
                if len(columns) >= 4:
                    rank = columns[0].text.strip()
                    country = columns[2].text.strip()
                    download_speed = columns[3].text.strip()
                    fixed_data.append({
                        "Rank": rank,
                        "Country": country,
                        "Download Speed (Mbps)": download_speed,
                    })
    
    return mobile_data, fixed_data

# URL of the Speedtest Global Index
url = "https://www.speedtest.net/global-index"

# Scrape the data
mobile_data, fixed_data = scrape_speedtest_data(url)

# Display the scraped data (optional)
print("Mobile Data:")
for item in mobile_data:
    print(item)

print("\nFixed Data:")
for item in fixed_data:
    print(item)
    
# Save data to CSV files
def save_to_csv(mobile_data, fixed_data):
    mobile_df = pd.DataFrame(mobile_data)
    fixed_df = pd.DataFrame(fixed_data)
    
    mobile_df.to_csv("mobile_data.csv", index=False)
    fixed_df.to_csv("fixed_data.csv", index=False)

# Call the save_to_csv function
save_to_csv(mobile_data, fixed_data)


# In[9]:


# Database connection details
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="abhi",
    password="1234",
    database="speedtest"
)

mycursor = mydb.cursor()

create_mobile_table = """
CREATE TABLE IF NOT EXISTS mobile_speeds (
    id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(255) NOT NULL,
    download_speed DECIMAL(10, 2) NOT NULL,
    ranking INT NOT NULL
)
"""
mycursor.execute(create_mobile_table)

create_fixed_table = """
CREATE TABLE IF NOT EXISTS fixed_broadband_speeds (
    id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(255) NOT NULL,
    download_speed DECIMAL(10, 2) NOT NULL,
    ranking INT NOT NULL
)
"""
mycursor.execute(create_fixed_table)
mydb.commit()

insert_mobile_data = """
INSERT INTO mobile_speeds (country, download_speed, ranking)
VALUES (%s, %s, %s)
"""
for item in mobile_data:
    mycursor.execute(insert_mobile_data, (
        item["Country"], 
        item["Download Speed (Mbps)"], 
        item["Rank"]
    ))
mydb.commit()

insert_fixed_data = """
INSERT INTO fixed_broadband_speeds (country, download_speed, ranking)
VALUES (%s, %s, %s)
"""
for item in fixed_data:
    mycursor.execute(insert_fixed_data, (
        item["Country"], 
        item["Download Speed (Mbps)"], 
        item["Rank"]
    ))
mydb.commit()

mycursor.close()
mydb.close()


# In[29]:


import mysql.connector

# Database connection details (replace with your actual details)
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="9899",
    database="speedtest"
)

mycursor = mydb.cursor()

# Check if the tables exist
mycursor.execute("SHOW TABLES")
tables = mycursor.fetchall()
print("Tables in the database:", tables)

# Check the first few rows of the mobile_speeds table
mycursor.execute("SELECT * FROM mobile_speeds LIMIT 5")
mobile_rows = mycursor.fetchall()
print("First 5 rows in mobile_speeds table:", mobile_rows)

# Check the first few rows of the fixed_broadband_speeds table
mycursor.execute("SELECT * FROM fixed_broadband_speeds LIMIT 5")
fixed_rows = mycursor.fetchall()
print("First 5 rows in fixed_broadband_speeds table:", fixed_rows)


# In[ ]:




