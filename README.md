# Final Project - Team4 - Wine Quality and Machine Learning 


![redvswhite]( https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/Images/shutterstock_249172333.jpg)
# Wine Quality and Machine Learning 
## Project Title: Red vs White Wine
## Project Team Members and their role responsibilities
- <b>Square:</b> Sue Christensen - Responsible for Github repository and branches
- <b>Triangle:</b> Dhileepan Raju - Responsible for mockup/machine learning model
- <b>Circle:</b> Jessica Meyer - Responsible for mockup/database
- <b>X:</b> Mary Uhlir - Responsible for which technologies/strategy for life of project

## Machine Learning Model: 
   - <b>Classification:</b> The classification algorithm is a Supervised Learning Technique that is used to identify the category of new observations on the basis of training data. In Classiffication, a program learns from the given dataset or observations and then classifies new observation into a number of classes or groups.

## Communication Protocols
   - For the duration of this project, Slack was the primary communication platform, with email and text message as secondary options, and Zoom technology supported twice weekly and adhoc meetings.    

## Project Technology Used:
- GitHub
    - Main Branch
    - Individual Branches (4)
    - Readme
- Postgres
    - SQL
- Python
    - Jupiter notebook
- Tableau
- WordPress
     - JavaScript
     - HTML

## First Segment: Sketch It Out:

- <b>Topic:</b> Red vs White Wine
- <b>Reason for selected topic:</b> This topic was one that all the members of the group had some familiarity with the subject and an interest in it as well.
- <b>Objective:</b> Accurately predict wine quality based on 11 physicochemical attributes with machine learning and available wine data sets.  
- <b>Target Audience:</b> Winemakers (aka Vintners)
- <b>Description of source data:</b> 
Two datasets were created, using red and white wine samples. The inputs include objective tests (e.g. PH values) and the output is based on sensory data (median of at least 3 evaluations made by wine experts). Each expert graded the wine quality between 0 (very bad) and 10 (very excellent).
The red and white wines are from the Portuguese “Vinho Verde” wine. For more details, consult: http://www.vinhoverde.pt/en/ or the reference [Cortez et al., 2009]. Due to privacy and logistic issues, only physicochemical (inputs) and sensory (the output) variables are available (e.g. there is no data about grape types, wine brand, wine selling price, etc.).

    - <b>Data Sets</b>: 
      - winequality-red.csv
      - winequality-white.csv
    - <b>Data sets information</b>: 
       - winequality-red.csv has 1599 rows and 12 columns.  
       - winequality-white.csv has 4898 rows and 12 columns.
    - <b>Data set attributes</b>: 
       - 11 input attributes
       - 1 output attribute
    - <b>Wine Attributes</b>:   
       - **Inputs (based on physicochemical tests):** 1 - fixed acidity 2 - volatile acidity 3 - citric acid 4 - residual sugar 5 - chlorides 6 - free sulfur dioxide 7 - total sulfur dioxide 8 - density 9 - pH 10 - sulphates 11 - alcohol   
       - **Output (based on scensory data):** 12 - quality 
         
    - [Link to Wine Attributes Descriptions](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/Images/Desc_of_wine_attributes.png)
        
- <b>Question we hope to answer with the data:</b>
     - Can we predict the quality of red and white wine samples, based on physicochemical tests, to determine if it is low, medium, or high quality? 

## Second Segment: Build the Pieces:

- [Link to Google Slides Presentation (draft)](https://docs.google.com/presentation/d/1pPYPIXXhRFoOzt5iiAWw96NKfVK3uW4QkJN_iUF9DdE/edit?usp=sharing) 

- Database:
   - [Database and SQL steps documentation file](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/SQL/Database%20and%20SQL%20steps.docx)
      - [ERD](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/SQL/ERD.png)
      - [Final_Project_Queries](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/SQL/Final_Project_Queries.sql)
      - [Connection String](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/connectionstring.ipynb)
      - [Combined Wine Quality CSV](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/SQL/combined_wine_quality.csv)
- Machine Learning:

- Link to  Dashboard (placeholder - - will add link upon final development)
   - Link to [Dashboard Concept](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/Dashboard/blueprint.pptx)
   - Link to [Draft_Website] (https://winequalityprediction.wordpress.com/)
