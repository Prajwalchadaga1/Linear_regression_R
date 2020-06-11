# CHECKING WORKING DIRECTORY 
getwd()

#SETTING WORK DIRECTORY
setwd("P:\\Spring 2020\\ML\\Assignment 1")

# READING DATA FROM CSV FILE IN WORK DIRECTORY
ratingsdata=read.csv(file='ratings.csv') # READING AND CREATING DATA 
ratingsdata


# SETTING UP THE MLR MODEL
mdl1 = lm(rating ~  food  + ambience + service, data=ratingsdata)

summary(mdl1)  # SUMMARY CALCULATION OF THE MODEL
anova(mdl1) # ANOVA TABLE


coef=mdl1$coefficients # COEFFICIENTS OF THE MODEL
coef # PRINTING THE COEFFICIENTS 

#FINDING STANDARD ERROR 
sigmahat= summary(mdl1)$sigma
sigmahat