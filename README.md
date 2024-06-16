## Description

This project scrapes data from the Speedtest Global Index website, which provides information on internet speeds worldwide. The script extracts data for both mobile and fixed broadband connections of all countries and stores this information in separate CSV files. Additionally, the data is stored in a MySQL database with two separate tables for mobile and fixed broadband data.

### Features:
- Web Scraping: Uses BeautifulSoup to scrape data from the Speedtest Global Index website.
- CSV Storage: Saves the scraped data into two CSV files: `mobile_data.csv` and `fixed_data.csv`.
- MySQL Database Storage: Stores the scraped data in a MySQL database, with separate tables for mobile and fixed broadband speeds.
- Database Backup: Includes a SQL backup file (`database_backup.sql`) containing the database schema and data.

### Files Included:
- `scrape_and_store.py`: Python script to scrape data, save it to CSV files, and store it in the MySQL database.
- `mobile_data.csv`: CSV file containing the scraped data for mobile internet speeds.
- `fixed_data.csv`: CSV file containing the scraped data for fixed broadband speeds.
- `database_backup.sql`: SQL file containing the backup of the MySQL database with the scraped data.
- `README.md`: Documentation file for the project.

### How It Works:
1. Scraping: The script sends a request to the Speedtest Global Index website and parses the HTML to extract data for mobile and fixed broadband connections.
2. Saving to CSV: The extracted data is saved into two separate CSV files for mobile and fixed broadband speeds.
3. Storing in MySQL: The data is inserted into two tables (`mobile_speeds` and `fixed_broadband_speeds`) in a MySQL database.
4. Database Backup: A backup of the database is created and saved as `database_backup.sql`.

This project allows users to easily scrape, store, and analyze internet speed data from around the world.
