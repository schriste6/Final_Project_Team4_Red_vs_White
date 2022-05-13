# Final_Project_Team4_Red_vs_White
## Project Title: Red_vs_White Wine

![redvswhite]( https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/Images/shutterstock_249172333.jpg)
---
## Project Team Members and their roles
- <b>Square:</b> Sue Christensen
- <b>Triangle:</b> Dhileepan Raju
- <b>Circle:</b> Jessica Meyer
- <b>X:</b> Mary Uhlir

## Team Member Role Responsibilities
- <b>Square:</b> Responsible for Github repository and branches
- <b>Triangle:</b> Responsible for mockup/machine learning model
- <b>Circle:</b> Responsible for mockup/database
- <b>X:</b> Responsible for which technologies/strategy for life of project

## Project Technology Used:
- GitHub
    - Main Branch
    - Individual Branches (4)
    - Readme
- Postgres
    - SQL
- Python
    - Jupiter notebook

## First Segment: Sketch It Out:

- <b>Topic:</b> Red vs White Wine
- <b>Reason for selected topic:</b> This topic was one that all the members of the group had some familiarity with the subject and an interest in it as well.
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
    - <b>Attributes</b>: 
      - fixed acidity
      - volatile acidity
      - citric acid
      - residual sugar
      - chlorides
      - free sulfur dioxide
      - total sulfur dioxide
      - density
      - pH
      - sulphates
      - alcohol
      - quality
     - <b>Description of attributes</b>:
          1. <b>fixed acidity</b>: most acids involved with wine or fixed or nonvolatile (do not evaporate readily)
          2. <b>volatile acidity</b>: the amount of acetic acid in wine, which at too high of levels can lead to an unpleasant, vinegar taste
          3. <b>citric acid</b>: found in small quantities, citric acid can add ‘freshness’ and flavor to wines
          4. <b>residual sugar</b>: the amount of sugar remaining after fermentation stops, it’s rare to find wines with less than 1 gram/liter and wines with greater than 45 grams/liter are considered sweet
          5. <b>chlorides</b>: the amount of salt in the wine
          6. <b>free sulfur dioxide</b>: the free form of SO2 exists in equilibrium between molecular SO2 (as a dissolved gas) and bisulfite ion; it prevents microbial growth and the oxidation of wine
          7. <b>total sulfur dioxide</b>: amount of free and bound forms of S02; in low concentrations, SO2 is mostly undetectable in wine, but at free SO2 concentrations over 50 ppm, SO2 becomes evident in the nose and taste of wine
          8. <b>density</b>: the density of water is close to that of water depending on the percent alcohol and sugar content
          9. <b>pH</b>: describes how acidic or basic a wine is on a scale from 0 (very acidic) to 14 (very basic); most wines are between 3-4 on the pH scale
          10.<b>sulphates</b>: a wine additive which can contribute to sulfur dioxide gas (S02) levels, wich acts as an antimicrobial and antioxidant
          11. <b>alcohol</b>: the percent alcohol content of the wine       
          12. <b>quality (based on sensory data)</b>: (score between 0 and 10)
- <b>Questions we hope to answer with the data:</b>
    - Can we use a machine learning algorithm to predict if the wine is red or white based on features of the wines?
    - Can we predict the quality of each red and white wine sample, to determine if it is low, medium, or high quality? 


## First Segment Requirements:
### 1.	Presentation (x)

    - Content Team members have drafted their project, including the following:
      - Selected Topic:
      - Reason for selected topic:
      - Description of source data:
      - Questions we hope to answer with the data:

    Note: The content does not yet need to be in the form of a presentation; text in the README.md works as well. 

### 2.	GitHub(Square) 
     - Main Branch
       - Includes a README.md
    - README.md 
      - README.md must include Description of the communication protocols
    - Individual Branches
      - At least one branch for each team member 
      - Each team member has at least four commits from the duration of the first segment

    Note: The descriptions and explanations required in all other project deliverables should also be in your README.md as part of your outline, unless  otherwise noted.

### 3.	Machine Learning (Triangle) 
    - Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
      - Takes in data in from the provisional database 
      - Outputs label(s) for input data

### 4.	Database (Circle)
    - Team members present a provisional database that stands in for the final database and accomplishes the following:
      - Sample data that mimics the expected final database structure or schema 
      - Draft machine learning module is connected to the provisional database

### 5.	Dashboard
    - N/A

