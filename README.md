# Crowdfunding ETL Pipeline Project (Project 2)
By: **Anqa Javed**

## Project Overview
For this project, I worked on building an ETL (Extract, Transform, Load) pipeline using **Python**, **Pandas**, and **PostgreSQL** to process and import crowdfunding campaign data into a PostgreSQL database. The project focused on transforming raw data from CSV files into a structured database, with various relationships and constraints defined between the tables.

This project aims to demonstrate my ability to work with ETL pipelines, database management, and data validation.

---

## Project Steps

### 1. **Data Extraction and Transformation**:
   - Extracted the data from four CSV files.
   - Processed and cleaned the data using **Pandas** in a Jupyter notebook.
   - Steps involved:
     - Handling missing or incorrect values.
     - Splitting columns (e.g., names) into separate fields.
     - Converting data types (e.g., `goal` and `pledged` to `float`).
     - Renaming columns for consistency.
     - Filtering or transforming data to ensure it matched the format required for the database.

### 2. **Database Creation & Schema Design**:
   - Designed the database schema using **DBD.io** and saved it as `crowdfunding_db_schema.sql`.
   - **DBD Diagram:** Took a screenshot of the ERD created, using **DBD.io** for visualizing the database schema.
  

   - Created the PostgreSQL database (`crowdfunding_db`) using the schema file.
   - Defined the necessary tables (`contacts`, `category`, `subcategory`, and `campaign`).
   - Established foreign key relationships between tables (e.g., `category_id` in `campaign` linked to `category_id` in `category`).

### 3. **Importing Data into PostgreSQL**:
   - After creating the necessary tables in PostgreSQL, I used the imported the data from the CSV files into the database.
   - Ensured that foreign key relationships between the tables were correctly established.

### 4. **Database Verification**:
   - Ran `SELECT` queries to verify that the data was imported correctly.
   - Checked that the foreign key relationships were properly implemented by examining the data integrity.

---

## Database Schema

The `crowdfunding_db` database consists of the following tables:

- **contacts**
  - `contact_id` (Primary Key)
  - `first_name`
  - `last_name`
  - `email`
  
- **category**
  - `category_id` (Primary Key)
  - `category`
  
- **subcategory**
  - `subcategory_id` (Primary Key)
  - `subcategory`
  
- **campaign**
  - `campaign_id` (Primary Key)
  - `contact_id` (Foreign Key from `contacts`)
  - `company_name`
  - `description`
  - `goal`
  - `pledged`
  - `outcome`
  - `backers_count`
  - `country`
  - `currency`
  - `launch_date`
  - `end_date`
  - `category_id` (Foreign Key from `category`)
  - `subcategory_id` (Foreign Key from `subcategory`)

---

## Key Features of the Project

- **Data Transformation:** Used Pandas to clean and transform raw data before importing into PostgreSQL.
- **PostgreSQL Database:** Designed a database schema with primary and foreign key constraints to maintain data integrity.
- **ETL Pipeline:** Created a full pipeline to extract, transform, and load data into PostgreSQL.
- **Data Validation:** Verified that the data was correctly imported and that all foreign key relationships were intact.

---

## Files in This Repository

1. **`crowdfunding_db_schema.sql`** – SQL file containing the database schema for PostgreSQL.
2. **`contacts.csv`** – CSV file with contact information for crowdfunding campaigns.
3. **`category.csv`** – CSV file containing categories for crowdfunding campaigns.
4. **`subcategory.csv`** – CSV file with subcategories for crowdfunding campaigns.
5. **`campaign.csv`** – CSV file with detailed crowdfunding campaign information.
6. **`ETL_Mini_Project_AJaved.ipynb`** – Jupyter notebook containing the ETL pipeline code.
7. **`crowdfunding_db`** – PostgreSQL database backup for the project.
8. **`DBD.jpg`** – Screenshot of the ERD created using **DBD.io**.

---

## How to Run This Project

1. **Clone the Repository:**
   Clone this repository to your local machine using:
   ```bash
   git clone https://github.com/AnqaJaved/Crowdfunding_ETL.git
----

### Final Deliverables
- A fully populated PostgreSQL database (`crowdfunding_db`) with all tables and relationships established.
- A Jupyter notebook that implements the ETL pipeline.
- A `README.md` file explaining the project, how to run it, and a summary of the steps involved.
