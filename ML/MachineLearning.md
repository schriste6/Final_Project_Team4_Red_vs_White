### Data Preprocessing: (Preprocessing, Feature selection, Test-train split)
- Combaining Data is taken care in DB module and for easy integration we expoted Data into CSV
    Note: We have DB Connection info present in DB and ML code, but commented out to avoid unnecessary dependency on DB in Cloud/Local
- Dropped insignifient columns which doesn't contribute to the problem which we are trying to solve(id & color)
    `grade_df.drop(['id', 'color'], axis=1, inplace=True)
    `
- Grouped the data under 3 major classification to apply classification model
- Visualizing Data using different Plots to identify the high level dependiencies which contributes the quality of Wine
- Using Pandas DataFrame Descripe Function to identify the composition of core components in Wine making process
- Key Features used to Train the model - > 'alcohol', 'pH', 'sulphates', 'volatile acidity', 'citric acid', 'residual sugar', 'chlorides', 'free sulfur dioxide', 'total sulfur dioxide', 'density', 'pH', 'sulphates', 'volatile acidity', 'citric acid', 'residual sugar', 'chlorides', 'free sulfur dioxide', 'total sulfur dioxide', 'density'
- Added Confusion Matrix to visualize Prediction vs True value

### Explanation of model:

*Model Selected for Project:* Random Forest (Which Performs Better compare to Other 3 models)

Model Comparison:

 ![ML Output](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/ML/output/ML_Comparison.png)
 
 Random Forest Classification Report:
 
 ![classification Report](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/ML/output/classification_report.png)
 
 Confusion matrix for Random Forest Classifier:
 
 ![Confusion matrix](https://github.com/schriste6/Final_Project_Team4_Red_vs_White/blob/main/ML/output/rfc_confusion_matrix.png)

Advantage of the Model:
- Random forest can solve both type of problems that is classification and regression and does a decent estimation at both fronts.
- One of benefits of Random Forest which exists me most is, the power of handle large data sets with higher dimensionality. It can handle thousands of input variables and identity most significant variables so it is considered as one of the dimensionality reduction method. Further, the model outputs importance of variable, which can be a very handy feature.
- It has an effective method for estimating missing data and maintains accuracy when large proportion of the data are missing.
- It has methods for balancing errors in data sets where classes are imbalanced.
- The capability of the above can be extended to unlabeled data, leading to unsupervised clustering,data views and outlier detection.

Disadvantage of the Model: 
- The main limitation of random forest is that a large number of trees can make the algorithm too slow and ineffective for real-time predictions. In general, these algorithms are fast to train, but quite slow to create predictions once they are trained.
- Random forest can feel like a black box approach for a statistical modelers we have very little control on what the model does. You can at best try different parameters and random seeds.


