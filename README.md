Project Overview
The ClearCare Data Initiative aims to provide a user-friendly price transparency tool to compare healthcare costs across hospitals and insurance providers. The initiative focuses on enhancing consumer empowerment by simplifying complex pricing data and offering cost comparisons in an accessible format. As part of the database team, our responsibility is to manage the project's data effectively to ensure its accuracy, integrity, and usability. 

Copy of files: 
Due to huge file sizes, Please find the attached link for Excel Files 3: https://cometmail-my.sharepoint.com/:f:/g/personal/sxc220023_utdallas_edu/EpBKqAzNM1xJtB5J5bnQOS0BZIGNsbXi00KZ9Z52GDd5pg?e=hgxMAB

Project Files :
The project consists of the following files and documents:

1. Final Presentation_CLEARCARE DATA.pptx
A PowerPoint presentation summarizing the key insights and progress of the ClearCare Data Initiative.
Includes project objectives, findings, and visualizations related to the cost comparison between hospitals and insurance providers.

2. Final_ClearCare_Initiative_Backup.backup
A backup of the final database that contains all the data for hospitals, treatments, and insurance provider charges.
This file is used for recovery and migration of the database to different environments if needed.

3. MIS 6349.001_Group4_ProjectCharter_Approval.msg
Email communication regarding the approval of the project charter for Group 4's project in the MIS 6349 course.
Contains initial project approval details and the scope of work.

4. MIS6349_Group4_Project_Charter.pdf
The formal project charter document for the ClearCare Data Initiative.
Outlines the project's goals, objectives, methodology, and stakeholders involved.

5. Negotiated_Charges_Table for All Datasets.zip
A ZIP file containing tables with negotiated charges for various insurance providers across multiple datasets.
These tables are critical for the analysis of insurance rate comparisons.

6. PROJECT DESIGN Document-Group 4.docx
A design document detailing the architecture and flow of the ClearCare Data Initiative project.
It outlines the structure of the database, including ER diagrams, schema, and normalization details for handling the healthcare cost data.

7. Procedure_Tables for All Datasets.zip
A ZIP file containing procedure tables for all datasets, outlining the treatment procedures and their corresponding codes.
The procedure tables are essential for mapping the healthcare services to the correct charges and insurance provider rates.

8. codes comparison.ipynb
•	Purpose: This notebook compares the data between two columns ("codes" and "Jacksonville") in an Excel file named "codes comparison.xlsx."
•	Excel File Used:
o	codes comparison.xlsx

9. Columns to rows .ipynb
•	Purpose: This notebook processes a dataset by working with a list of allowed column names and likely reshapes the data, converting columns to rows or filtering the data based on certain criteria. This is a sample uploaded for Jacksonville. REPLACE WITH YOUR FILE AS REQUIRED. 
•	Excel File Used:
Jacksonville cleaned dataset.xlsx,
Jacksonville cleaned dataset column to row.xlsx,
Jacksonville cleaned dataset row format.xlsx,
Jacksonville cleaned dataset - Utkarsha.xlsx,
Springfield_final.xlsx

10. Descriptions.ipynb
•	Purpose: This notebook deals with loading an Excel file ("codes_with_descriptions.xlsx") and performing operations on two specific sheets ("Sheet1" and "Sheet2").
•	Excel File Used:
codes_with_descriptions.xlsx,
highlighted_codes_not_found_sheet2.xlsx,
codes comparison for description.xlsx

11. Filtered Dataset.ipynb
•	Purpose: This notebook loads two Excel files and processes the "Jacksonville" column from one of them. This is a sample uploaded for Jacksonville. REPLACE WITH YOUR FILE AS REQUIRED. 
•	Excel Files Used:
non cpt codes.xlsx,
Jacksonville_Memorial_Hospital.xlsx

12. Missing values cleaning.ipynb
•	Purpose: This notebook loads the "Jacksonville cleaned dataset.xlsx" Excel file, which likely contains data with missing values. This is a sample uploaded for Jacksonville. REPLACE WITH YOUR FILE AS REQUIRED. 
•	Excel File Used:
Jacksonville cleaned dataset.xlsx

14. Negotiated charges.ipynb
•	Purpose: This notebook processes an Excel file, "Jacksonville_Negotiation_Charges.xlsx," and fills in missing payer IDs using a defined mapping based on payer names. This is a sample uploaded for Jacksonville. REPLACE WITH YOUR FILE AS REQUIRED. 
•	Excel File Used:
Jacksonville_Negotiation_Charges.xlsx


Getting Started :
Prerequisites
Python (for data cleaning and processing)
PostgreSQL (for database management)
Jupyter/Google Colab (for running Python code scripts)
PowerPoint (for viewing the final presentation)


Installation and Setup :
Clone or download the repository containing the project files.
Set up PostgreSQL and restore the database from the backup (Final_ClearCare_Initiative_Backup.backup) if needed.
Run the Python scripts (Python_code_scripts.ipynb) in Jupyter or Google Colab to process the data and load it into the PostgreSQL database.
Review the project design document to understand the database schema and data flow.
View the presentation (Final Presentation_CLEARCARE DATA.pptx) to get an overview of the project's progress and findings.

Key Features :
Data Collection & Analysis: The project collects data from multiple hospitals and insurance providers, focusing on healthcare cost transparency and insurance rate comparison.
Insurance Cost Comparison: Users can compare gross and negotiated charges from different insurance providers to make informed decisions.
Data Automation: Python scripts automate the data cleaning, transformation, and database loading, ensuring efficiency and scalability.

License :
This project is part of the ClearCare Data Initiative and is intended for academic and learning purposes only.
