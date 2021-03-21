# NHL_Solo_Final Project

## Team Roles
Due to my persional issue, I work on my project on my own.

## Project Goal

My goal is to determine if there is any correlation between shot_type,home advantage and win.  I selected this topic because I want to see what the potential outcomes are based on the data I have chosen. Furthermore, I feel that based on this data I can predict how certain teams will perform by the shot type, key stats they creat and if there is home advantage.

## Questions we want to answer

Is there strong correlations between shot type and event(goal/shot)?
Is there a connection between being on the home team for  players to have a better win percentage?
Is there strong correlations between key stats and wins?
Do I need to add more data to get a high accuracy score when using a machine learning model?


## Description of the data exploration phase of the project

I began the project by importing game_plays.csv to jupyter notebook(NHL Data cleaning and Modeling for wins
). I noticed that the some of the  columns had data that would be tough to sort because it was not in the correct format. In order to change this I used to methods to clean up the column and some data transformation did occur within Excel, however most of the data clean up was done through Jupyter Notebook. 

For the data portion of this project we used SQL, R & Python. If you take a look at our NHL Data cleaning and Modeling for wins.ipynb file, what can be seen is I made home_goals and away_goals data binary for Home Advantage Analysis. I also merge the team_info.csv and game_teams_stats data sets.  The game_teams_stats.csv data set does not  show the team_id information, and I made the 'won' column data binary for Plays Analysis

The main library we used with python was pandas to import, clean and merge the data. With our merged data we are able to search for correlations to see what features had an impact on the goals and wins result column. After merged and  binary some columns, I decided to look at team and game statistics and many other metrics.


## Description of the analysis phase of the project

The analysis phase consisted of creating four SQL tables using PGadmin to prepare our data for the machine learning model. The tables created are the 'game_plays','games','team_info','team_stats' Using the 'team_stats' table and joining the 'team_info' table on 'team_id'. The combined SQL query was exported as the 'teams'table. This was used to train and test our machine learning model for play analysis.

Using Jupyter Notebook, the CSV files were imported and the number of columns was reduced in an iterative process; columns with null values were filled or dropped according to importance. All objects were converted float64 or int64 variables and encoded. The encoded dataframe was split into training and testing sets. The values for 'X' were all values, with the exception of the 'winner' column which was used for the 'y' values.

For shots type analysis, the training set was ran through a BalancedRandomForestClassifier,EasyEnsembleClassifier and LogisticRegression machine learning model. The accuracy score test was 58%, 59% and 91% respectively.

For home advantage analysis, I analysed the Regular game data, and applyed LogisticRegression machine learning model. The accuracy score test was 53%

According to the NHL_project_datasets_analysis.ipynb, I found out that some key features ('goals','shots','hits','pim','faceOffWinPercentage','takeaways','giveaways','powerPlayGoals','powerPlayOpportunities') were correlated with 'won'. Therefore for the plays analysis, I tried different ML algorithms with the selected variables to see which one performs best. Comparing with SVM, LogisticRegression machine learning model.preformed best for predicting wins.

Ultimately I found that keeping our data as binary as possible renders better accuracy for the machine learning model selected; furthermore, I found the top features with the greatest importance to be shots type, home advantage, and important features
('goals','shots','hits','pim','faceOffWinPercentage','takeaways','giveaways','powerPlayGoals','powerPlayOpportunities')


# Technologies Used

## Source Control
Github will be the primary code hosting platform.

## Data Cleaning and Analysis
Excel will be used as an overview to the data. Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python and Jupyter Notebook.

## Database Storage
I connected pandas with SQL and created databse called NHL_DB that can store the working data.

![QuickDBD-Free Diagram (1)](https://user-images.githubusercontent.com/71739110/111904946-3d147880-8a84-11eb-915c-628f2291ffd5.png)

More Detail: https://github.com/vitapoon/NHL_Final-Project/tree/data-mockup

## Machine Learning
SciKitLearn is the ML library we'll be using to create a classifier. My training and testing setup is using an 75/25 train-test split ratio. The training set was then fit into a Logistic Regression classifier.

More Detail:https://github.com/vitapoon/NHL_Final-Project/tree/MachineLearning

## Dashboard
![dash](https://user-images.githubusercontent.com/71739110/111620159-4e117f80-8821-11eb-8b0d-509cad5ae051.png)

# Resources
Data Source: Kaggle

# Presentation

https://docs.google.com/presentation/d/1inNnRM9a-vXy1p2gCe5N5E4Vr0FQT-gxnQw4pi1AHZE/edit#slide=id.gb0bb7a2194_0_5

Link to Google Slides Presentation
