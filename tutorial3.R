# data set ; csv excel notepad ; 

# dataframe from inbuilt dataset

data()
Titanic
head(Titanic)


?Titanic
is.data.frame(Titanic)

df <- as.data.frame(Titanic)

is.data.frame(df)

head(df)

dim(df)

summary(df)

df1 <- Orange
is.data.frame(df1)




# call mlbench
library(mlbench)
# rerun data() to watch the datasets



# use data set name in single or double quotes to call the data in R
data("BostonHousing") 

BostonHousing
is.data.frame(BostonHousing)

head(BostonHousing)

df2 <- BostonHousing
# rm(BostonHousing)
head(df2)


# read from csv files
# sep, header, fileName

df_csv = read.csv("sample_csv_file.csv")

head(df_csv)

is.data.frame(df_csv)

df_csv = read.csv("sample_csv_file.csv", header = T)
df_csv = read.csv("sample_csv_file.csv", header = F)

df_csv = read.csv("sample_csv_file.csv", header = T, sep = ",")

dim(df_csv)



# read from notepad files
# sep, header, fileName

df_notepad = read.table("sample_text_file.txt", sep = "\t")
head(df_notepad)


df_notepad = read.table("sample_text_file.txt", sep = "\t", header = T)
head(df_notepad)


# read.csv and read.table reads Tabular form of data, so you can use it interchangebly
df_csv_2 = read.csv("sample_text_file.txt", header = T, sep = "\t")
df_notepad_2 = read.table("sample_csv_file.csv", sep = ",", header = T)

head(df_csv_2)
head(df_notepad_2)


# read from excel files 
library(readxl)
excel_file = read_excel("sample_excel_file.xlsx")
head(excel_file)
colnames(excel_file)

?read_excel

# wrt sheet
excel_file = read_excel("sample_excel_file.xlsx", sheet = "Sheet1")
head(excel_file)


excel_file = read_excel("sample_excel_file.xlsx", sheet = "Sheet2")
head(excel_file)


excel_file = read_excel("sample_excel_file.xlsx", sheet = 1)
head(excel_file)


excel_file = read_excel("sample_excel_file.xlsx", sheet = 2)
head(excel_file)

# skip command - skip rows from top
excel_file = read_excel("sample_excel_file.xlsx", sheet = 1, skip = 3)
head(excel_file)


# header - include it or not, using col_names
excel_file = read_excel("sample_excel_file.xlsx", sheet = 1, col_names = F)
head(excel_file)






df = read_excel("sample_excel_file.xlsx", sheet = "Sheet1")
head(df)


head(df$Topic)
head(df['Topic'])





# rownames(df)

# View Command : helps you to watch dataframe in table format in R window
View(df)

View(Orange)
View(BostonHousing)


# edit : edit(df_name)
# edit the data set in editor

edit(df)
head(df)

# can't edit it directly. save changes in another variable
edit_df = edit(df)
head(edit_df)


# fix : fix(df_name)
# helps you to edit the data permanently

fix(df)
head(df)
# df[3 : length(df), ]

is.vector(df)

ls()


# for (each in ls()){
#   print(is.vector(each))
# }




######## Convert categorical to numerical ######

# set.seed(10)
# mat = matrix(as.integer(runif(30, 30, 60)), nrow = 10, ncol = 3)
# df = data.frame(mat)
# head(df)
# colnames(df) <- LETTERS[1 : 3]
# 
# df$D = c(letters[4 : 6], letters[4 : 6], letters[4 : 6], "f")
# df




df = read.csv("sample_csv_file.csv")
head(df)
dim(df)

unique(df$location)

# drop duplicates : 
df <- unique(df)


# used in python : onehotencoding, labelencoder, get_dummies

# 1. without any ordered 
# Base R itself, 

df$location_Mumbai = ifelse(df$location == "Mumbai", 1, 0)
df$location_Delhi = ifelse(df$location == "Delhi NCR", 1, 0)
df$location_Bengaluru = ifelse(df$location == "Bengaluru", 1, 0)
df$location_Chennai = ifelse(df$location == "Chennai", 1, 0)
df$location_Ahmedabad = ifelse(df$location == "Ahmedabad", 1, 0)
df$location_Kolkata = ifelse(df$location == "Kolkata", 1, 0)

colnames(df)
head(df)

# drop location column
df <- df[-3]



# 2. fastDummies : without ordered values

df = read.csv("sample_csv_file.csv")
head(df)
dim(df)
unique(df$location)

# drop duplicates : 
df <- unique(df)

library(fastDummies)
df <- dummy_cols(df, select_columns = "location")
head(df)

# drop location column
df <- df[-3]


# 3. factor : give priority to values inside the column
df = read.csv("sample_csv_file.csv")
head(df)
dim(df)
unique(df$location)

# drop duplicates : 
df <- unique(df)

# process - 
vec <- unique(df$location)
?factor
level_vec <- c("Kolkata", "Chennai", "Ahmedabad", "Mumbai", "Bengaluru", "Delhi NCR")
fac_1 = factor(x = vec, levels = level_vec, ordered =T)


# acutally implement  in dataset
# categorical values intact
df$location = factor(x = df$location, levels = level_vec, ordered =T)
head(df)

df$location[1] < df$location[2]



# convert categorical values to numerical
df$location = factor(x = df$location, levels = level_vec, ordered =T, labels = c(1,2,3,4,5,6))
head(df)

df$location[1] < df$location[2]

summary(df$location)
typeof(df$location)


summary(df)


# dplyr package : 
library(dplyr)

# plyr # package

# It does not provide any new functionality to R, it just makes the commands simpler and with little more sense

# Some of the key "verbs" provided by the dplyr package are
# . select: return a subset of the columns of a data frame, using a flexible notation
# . filter: extract a subset of rows from a data frame based on logical conditions
# . arrange: reorder rows of a data frame
# . rename: rename variables in a data frame
# . mutate: add new variables/columns or transform existing variables
# . summarise / summarize: generate summary statistics of different variables in the data frame,
# possibly within strata
# . %>%: the "pipe" operator is used to connect multiple verb actions together into a pipeline

# library(tidyverse)
# install.packages("tidyverse", dependencies = T)

df = read.csv("sample_csv_file.csv")
head(df)
dim(df)
unique(df$location)

# drop duplicates : 
df <- unique(df)


#1. select : select subset of dataset
# select(dataframName, colNames)

select(df, "experience")

# taking one column at a time
select(df, experience)  #df$experience


# take multiple cols 
select(df, job_desig, placement_count)


# exclude cols
df[, -"placement_count"]
select(df, -placement_count)


# select cols, that start with some value or end in some value
select(df, starts_with("job"))
select(df, ends_with("Date"))



#2. filter : select data as per condition
# filter(dataframeName, condition)
head(df)
summary(df$placement_count)

df1 = filter(df, placement_count >= mean(placement_count))
head(df1)
dim(df1)


df2 = filter(df, placement_count >= mean(placement_count) & location == "Mumbai")
head(df2)
dim(df2)


# 3. arrange - reorder rows 
# arrange(dataframeName, colName)
arrange(df, placement_count)
arrange(df, desc(placement_count))



# 4. rename - 
# rename(df_Name,  newValue = oldValue, )
colnames(df) <- LETTERS[1 : 5]

df = read.csv("sample_csv_file.csv")
head(df)
dim(df)
unique(df$location)

# drop duplicates : 
df <- unique(df)
df = rename(df, "JOb" = "job_desig", Placed = placement_count)










# dplyr continue ..
df = as.data.frame(matrix(as.integer(runif(30, 10, 30)), nrow = 10))
df

names(df) <- c("C1", "C2", "C3")

# 5. mutate 
# mutate(dfName, newCol = logic)
# mutate(dfName, oldCol = logic)
df$C4 = LETTERS[10 : 19]
df

library(dplyr)

df = as.data.frame(matrix(as.integer(runif(30, 10, 30)), nrow = 10))
df
names(df) <- c("C1", "C2", "C3")
mutate(df, C4 = LETTERS[10 : 19])
mutate(df, sum_col = C1 + C2 + C3)


mutate(df, avg_col = mean(C1 + C2 + C3))

mutate(df, C2 = C2 - mean(C2))

mutate(df, C1 = C1 + median(C1))

median(df$C1)

# multiply 0.5 to all data columns except C1
mutate(df, C2=C2*0.5, C3 = C3*0.5)

mutate(df,multiply=0.5*df[2:3])

# mutate(df, c(C2*0.5, C3*0.5))
mutate(df, df[-1] * 0.5)


# 6. group by , summarize
# it is used to generate summary stats from df.
# new_group = group_by(dfName, col)

df = as.data.frame(matrix(as.integer(runif(30, 10, 30)), nrow = 10))
df
names(df) <- c("C1", "C2", "C3")
df$C4 = c(LETTERS[7 : 9], LETTERS[7 : 9], LETTERS[7 : 9], "H")

unique(df$C4)
new_group = group_by(df, C4)
typeof(new_group)

summarise(new_group, mean(C1))
summarise(new_group, mean(C1), max(C2))

stats.table = summarise(new_group, mean(C1), max(C2), median(C3), .groups = "keep")
stats.table = summarise(new_group, mean(C1), max(C2), median(C3))

stats.table$`mean(C1)`
stats.table$`median(C3)`

typeof(stats.table)

paste(stats.table$`mean(C1)`)


stats.table = summarise(new_group, mean(C1), max(C2), median(C3), n(), .groups = "keep")


stats.table = summarise(new_group,C1.mean =  mean(C1),C2.max =  max(C2), C3.median = median(C3),Count =  n(), .groups = 'keep')



# stats.table = summarise(new_group,"C1.mean" =  mean(C1),'C2.max' =  max(C2), 'C3.median' = median(C3),'Count' =  n())





################ Visualization ##################

# matplotlib , seaborn, plotly, bokeh


# all types of 2D and 3D can be done with R

# plot names -
# scatter , plot, boxplot, hist, line, barplot, pairplot, kde plot, 

# univariate 
# bivariate 


# Plots  
# 1. Generic / Plot 
x <- seq(1, 10)
y <- seq(10, 100, 10)

plot(x, y)
# default : point type
plot(x, y, type = "p") # point plot
plot(x, y, type = "l") # line plot
plot(x, y, type = "b") # both open point and line plot
plot(x, y, type = "o") # both closed point and line plot
plot(x, y, type = "s") # step plot




# 2. strip plot - 
stripchart(x)
stripchart(x, vertical = T)


# 3. hist - frequency of data values
arr1 = as.integer(runif(10, 10, 30))
hist(arr1)

hist(arr1, col = 'red')
hist(arr1, col = 'blue')

hist(arr1, col = cm.colors(10))


arr1 = as.integer(runif(100, 10, 50))
hist(arr1)
hist(arr1, col = cm.colors(10), breaks = 10) # bins = breaks
hist(arr1, col = cm.colors(10), breaks = 2) # bins = breaks
?hist(arr1, col = cm.colors(10), breaks = 3) # bins = breaks

# border col parameter
hist(arr1, col = cm.colors(10), border = "red", breaks = 3) 

# xlab, ylab, main = title
hist(arr1, col = cm.colors(10), border = "red", breaks = 3,
     xlab = "Array1", ylab = "Count", main = "First Histogram") 



# 4. pie chart - pie(x, label)
department <- c("Sales", "IT", "HR", "Manager")
emp_count = c(100, 40, 6, 42)


pie(x = emp_count, labels = department)

pie(x = emp_count, labels = department, col = cm.colors(4))

pie(x = emp_count, labels = department, col = rainbow(4))

# viridis
library(viridis)

pie(x = emp_count, labels = department, col = viridis(4),
    main = "Pie Chart", clockwise = T, radius = 1)



png(filename = "Pie_png.png")
pie(x = emp_count, labels = department, col = viridis(4),
    main = "Pie Chart", clockwise = T, radius = 1)
dev.off()



pdf(file = "Pie_PDF.pdf")
pie(x = emp_count, labels = department, col = viridis(4),
    main = "Pie Chart", clockwise = T, radius = 1)
dev.off()




# boxplot - outliers, iqr, quatiles, min, max, 

col1 = as.integer(runif(100, 10, 50))
col2 = c(10 : 30, 10 : 30, 10 : 30, 1 : 30, 10 : 16)

bx = ?boxplot(x = col2)

max(col2)
min(col2)
median(col2)
quantile(col2, 0.25)
quantile(col2, 0.75)


typeof(bx)
bx$stats
bx$out

