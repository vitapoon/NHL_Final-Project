# NHL_Final Project

## Project Goal

My goal is to determine if there is any correlation between our features(shot_type,home_goals,away_goals,key plays(goal,shot,hits...)) selected and if teams are successful or in not making the goal or win. If there is a correlation, I would like to see what other features from different data not in our current set have a strong correlation to the win result output such as advanced play metrics. I selected this topic because I want to see what the potential outcomes are based on the data we have chosen. Furthermore, I feel that based on this data I can predict how certain teams will perform by the shot type, key stats they creat and if there is  home advantage.

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



# Technologies Used

## Source Control
Github will be the primary code hosting platform.

## Data Cleaning and Analysis
Excel will be used as an overview to the data. Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python and Jupyter Notebook.

## Database Storage
I connected pandas with SQL and created databse called NHL_DB that can store the working data.

## Machine Learning
SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is using an 75/25 train-test split ratio. The training set was then fit into a Logistic Regression classifier.

# Resources
Data Source: Kaggle

# Presentation

# Conclusion

