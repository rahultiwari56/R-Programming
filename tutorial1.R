
# Run : ctrl + Enter

getwd()



a = 10
b <- 100
c -> 99  # error, since pointer should be towards variables not literals

# pandas(file = , index = )

-------------------------

# Data types : 
# list tuple dict set string boolean num

# Datatypes in R :

# 1. String : '' ""
s1 = "Hello "
s2 = ' Friend'
s1+s2
s1

print(s1)
print(s2)

str <- cat("learn", "code", "tech", sep = ":")
print(str)

str <- paste("Learn", "Code", sep="-")
print(str)


print(s1, s2)
print(c(s1, s2, " 2021"))

# help in R
help(print)

paste(s1, s2)

#########################################





a = 'rahul'
b = 'tiwari'

c=paste('my name is', a, b)
c

c =cat(a,b)
c

------------------------------
  
  x=y='orange'

x
y

q. = 'rahul'
print(q.)

#-----------------------------

substr("Learn Code Tech", 1, 1)

#-----------
str <- "Learn Code"

# counts the characters in the string
len <- nchar(str)

# Accessing character using
#  substring() function
print(substring(str, len, len))

# Accessing elements out of index
print(substring(str, len+1, len+1))
#--------------------


str <- "Hi LeArn CodiNG"
print(toupper(str))
print(tolower(str))
print(casefold(str, upper = TRUE)) # convert to upper/lower based on logical value specified to upper

#--------------------

# replace 2nd char of string
str <- c("program", "with", "new", "language")
substring(str, 2) <- "%"
print(str)

# ----------------

str = "Splitting sentence into words"
strsplit(str, " ")

#----------------------


# take input from the user
# readline
name = readline("What is your Name : ")
age <- readline("What is your age : ")

# check data type : 
typeof(name)
typeof(age)

# type cast / coercion
age <- as.integer(age)
age <- as.numeric(age)

age = as.integer(readline("What is your age : "))
typeof(age)

a <- "ajgfydvg"
b = 64561L # convert to integer with "L"
typeof(a)
typeof(b)


# 1. string
# 2. number
# 3. boolean

a <- True
typeof(a)

a <- T
typeof(a)

v = 1:10
is.vector(v)

# clr screen : ctrl + L

# environment variables : 

ls() # show all variables
rm(age) # remove a single variable

rm(list = ls())

#4. complex
num1 = 5 + 6i
typeof(num1)
num2 = -6i
typeof(num2)






######################## Advanced data types in R


# Objects in R
# 1. vector - collection of elements of different data type
# 2. list
# 3. factor
# 4. matrix
# 5. dataframe




################  1. Vector : 

"
When you want to create vector with more than one element, you should use c() function which means to combine the elements into a vector.
It is 1 Dimensional
All elements must have the same data type
"

vec1 <- 11 : 22
# vec2 <- c(22, 100, -3.3, TRUE, "hello ", "R")
#vec2 <- c(22, 100, -3.3, TRUE)
vec2 <- c(TRUE)

typeof(vec2)
is.vector(vec2)

# char > num > logical


vec3 = c(1 : 5, TRUE, c("A", "B"), -3.3)
vec3[1]


vec4 = LETTERS[1 : 10]   # letters[1:10]
vec4 = letters[1 : 10]


# seq function
# syntax : seq(from, to, by, length.out)
# vec5 = seq(from = 10, to = 100)
# vec5 = seq(from = 2, to = 20, by= 2)  # first 20 even  num
vec5 = seq(from = 1, by= 2, length.out = 50) # first 50 odd num

typeof(vec5)
is.vector(vec5)


# w3school # tutorialspoint
v <- seq(from = 1, to = 20, by = 2)
v
length(v)

v <- seq(from = 1, by = 2, length.out = 50)
v






#repition fun : rep : repeat a vriable , syntax : rep(variableName,integerNum)
#print("A" * 3)

rep(10, 3)
help(rep)
rep(v, 2)

vec6 <- rep(1, 10)
is.vector(vec6)


rep(c(1, 3, 5), c(1, 3, 5))

# abbccc
rep(letters[1 : 3], c(1, 2, 3))

# aaabbc
rep(letters[1 : 3], c(3, 2, 1))


a <- c(1 : 10, T, c(3, 6), v)

# create empty vector
v = c()



# random numbers 
# runif(n, min, max)

set.seed(100)
v1 = runif(10 , 10, 20)
v1
is.vector(v1)



set.seed(100)
v1 = as.integer(runif(10 , 10, 20))
v1
is.vector(v1)



########## operations in Vector

# position / index : vName[index]
set.seed(100)
v1 = as.integer(runif(10 , 10, 20))
v1
v1[3]
v1[1]

v1[-3] # "-" remove element at index position
v1 = v1[-3] 

v1[length(v1)]


# naming a vector
set.seed(100)
v1 = as.integer(runif(10 , 10, 20))
v1

names(v1) <- letters[1 : 10]
v1["f"]
v1['d']

v1[-'a']# showws error


# slicing : vName[start : end]
v1[1 : 5]

v1
v1["a" : "e"]
v1[c('a', 'b', "e")]

v1[c(10, 5, 66)]

v1[-c("d", "e", "f")]

v1[-c(4,5,6)]
v1[c(-4,-5,-6)]
v1[-(4 : 6)]
v1[-4, -6]


sqrt(100)
floor(10.3)

exp(3)



v1
min(v1)
max(v1)
mean(v1)
median(v1)
sum(v1)


a = c(2 : 5)
b = 6 : 9

a + b
a- b
a * b
a / b

# Concatenation of vec

c(a, b)




getwd()



# Agenda : 
# na and null
# vector - 2 operation
# if else
# for while
# functions
# 
# 
# list
# factor


set.seed(100)
v1 = as.integer(runif(20,10,20))
v1


length(v1)
min(v1)
max(v1)
mean(v1)
median(v1)
mode(v1) # function to find mode
sum(v1)


# index, slicing, length, 
# assigning
# syntax : vName[position] <- newValue

names(v1) <- LETTERS[1 : 10]
v1
v1[3] = 100
v1["A"] = 99
v1["A"] <- 99

# NA and NULL;

v1[5] = NA
v1[6] = NA
v1

# check if NA is there
is.na(v1)
v1[is.na(v1)]

# check vector without NA
v2 = v1[!is.na(v1)]
length(v2)


# math functions with NA
v1
length(v1)
min(v1)
max(v1)
mean(v1)
median(v1)
sum(v1)


# math functions with without NA
min(v1, na.rm = TRUE)
max(v1, na.rm = T)
mean(v1, na.rm = T)
median(v1, na.rm = T)
sum(v1, na.rm = T)




# NA and NULL :
# NULL - vacancy , no existence of vector
set.seed(100)
v1 = as.integer(runif(10,10,20))
v1

# v1[8] = NULL

vec1 = c(9 : 12, letters[6 : 8], F, NA)

vec2 = c(9 : 12, letters[6 : 8], F, NULL)

length(vec1)
length(vec2)

vec1 = c(9 : 12, NA, seq(3 , 10, 2))
vec2 = c(9 : 12, NULL, seq(3 , 10, 2))

mean(vec1)
mean(vec2)

vec1 <- NA
vec2 <- NULL
length(vec1)
length(vec2)

is.vector(vec1)
is.vector(vec2)



v <- c()
v <- c(NULL)




################# Conditional Statements ###############
if(condition){
  statements
}else if (condtion){
  state...
}else {
  state...
}


marks = as.integer(readline("Enter Marks : "))
if (marks >= 80){
  print("A")
}else if(marks >= 60 & marks < 80){
  print("B")
}else {
  print("C")
}

# for loop : 
for (iter in 1 : 10){
  state
}

for (iter in vName){
  state
}


set.seed(100)
v1 = as.integer(runif(10,10,20))
v1
names(v1) <- letters[1 : 10]
v1[5]
v1["e"]


for (i in 1 : 6){
  print(v1[i])
}


for (i in 1 : length(v1)){
  print(v1[i])
}

for (i in v1){
  print(i)
}


# while loop
iter = value
while (logic){
  state...
  iter = iter + 1
}

# factorial program
num = as.integer(readline("Enter Any NUmber : "))
fact = 1
while(num > 0 ){
  fact = fact * num
  num = num - 1
}
# print(c())
paste("Factorial = ", fact)


# fibonacci , prime, 

# break and next

v1
for (each in v1){
  if (each == 10){break
  }else{print(each)}
}


for (each in v1){
  if (each == 10){next
  }else{print(each)}
}


######## Functions ##############

functionName <- function(arguments){
  state....
  return(vName)
}

functionName(parameters....)




# factorial program Functions

fact_fun <-function(num){
  fact = 1
  while(num > 0 ){
    fact = fact * num
    num = num - 1
  }
  return(fact)
}

num = as.integer(readline("Enter Any NUmber : "))
fact_fun(num)
paste("Factorial = ", fact_fun(num))


area.circle <- function(radius, pieValue){
  area = radius * radius * pieValue
  return(area)
}
# r = 10, pie = 3.14

# 1. postional arguments
area.circle(10, 3.14)
area.circle(3.14, 10)

# 2. keyword
area.circle(radius = 10, pieValue = 3.14)
area.circle( pieValue = 3.14, radius = 10)
area.circle( pieValue = 3.14, rad = 98)


#3. default
area.circle <- function(radius, pieValue = 3.14){
  area = radius * radius * pieValue
  return(area)
}

area.circle(radius = 10)
area.circle(radius = 10, pieV = 3.2)





########### Object : List ###########
# collection of elements of different data types
# list()

vec <- c(5 : 12)
is.vector(vec)

vec <- c(5 : 12, letters[5 : 12], c(T, FALSE))

listName <- list(vec)
typeof(listName)

listName <- list("col1" = 5 : 12, "col2" = letters[5 : 12],"col3" =  c(T, FALSE))


listName2 <- list(5 : 12,letters[5 : 12],c(T, FALSE))


# access the element
listName2[2]
listName2[[2]]           # access part in list
listName2[[2]][5]       # access an element

# find FALSE
listName2[[3]][2]


# find 7
listName[["col1"]][3]

names(listName)
listName["col1"]
listName$col1[3]

listName$col3[2]



listName
newList <- list("s1" = seq(3, 10, 3), "s2" = rep(0, 5))

listName$col4 <- newList

listName$col4
listName$col4$s1
listName$col4$s1[3]


for (each in listName){
  print(each)
}


for (each in listName2){
  print(each)
}

is.vector(listName)
is.list(listName)

# vec, seq, random, rep, for, while, ifelse, func, list, na-null,






########### Object : List ###########
# collection of elements of different data types
# list()

vec <- c(5 : 12)
is.vector(vec)

vec <- c(5 : 12, letters[5 : 12], c(T, FALSE))

listName <- list(vec)
listName <- list("col1" = 5 : 12, "col2" = letters[5 : 12],"col3" =  c(T, FALSE))


listName2 <- list(5 : 12,letters[5 : 12],c(T, FALSE))


# access the element
listName2[2]
listName2[[2]]           # access part in list
listName2[[2]][5]       # access an element

# find FALSE
listName2[[3]][2]


# find 7
listName[["col1"]][3]

names(listName)
listName["col1"]
listName$col1[3]

listName$col3[2]



listName
newList <- list("s1" = seq(3, 10, 3), "s2" = rep(0, 5))

listName$col4 <- newList

listName$col4
listName$col4$s1
listName$col4$s1[3]


for (each in listName){
  print(each)
}


for (each in listName2){
  print(each)
}

is.vector(listName)
is.list(listName)

# vec, seq, random, rep, for, while, ifelse, func, list, na-null,








-----------------------------------------------------------------------------------------
  
  
  
  
  
  
  ## Data frames ###
  
  # how to create a dataframe
  
  args(data.frame)
?data.frame


# 1. from vectors
c1 <- c(5, 8, 3)
c2 = c(T, FALSE, F)
c3 = letters[1 : 3]

d1 = data.frame(c1, c2, c3)
d1



# 2. list
listName = list("c1" = c(5, 8, 3), 
                "c2" = c(T, FALSE, F), 
                "c3" = letters[1 : 3])


d2 = data.frame(listName)
d2

d3 = as.data.frame(listName)  # type casting
d3

is.data.frame(d2)


object.size(c1)
object.size(c2)
object.size(c3)


object.size(d1)

object.size(listName)
object.size(d2)



# 3. matrix
set.seed(10)
mat = matrix(as.integer(runif(30, 30, 60)), nrow = 10, ncol = 3,dimnames = list(letters[1 : 10], c("C1", "C2", "C3")))
args(matrix)

d4 = data.frame(mat)

object.size(mat)
object.size(d4)


is.data.frame(d4)


################## data frame ops #############

df = d4
df

#a. access the elements 
df["C2"]
df[, "C2"]

df$C2
df[4 : 6, ]
df[c('d', 'e', 'f'), ]
df[c("d" : "f"), ] # :apply for indeces  only

df[, -1]
df[-c(2 : 4), ]

df[-c(2 : 4), c("C3")]


# b. it helps you to get number of columns
length(df) 




set.seed(10)
mat = matrix(as.integer(runif(30, 30, 60)), nrow = 10, ncol = 3)
df = data.frame(mat)

# c. count number of rows and columns
dim(df)


# d. check names of columns in dataframe
names(df)


# e. rename columns / rows

colnames(df) = LETTERS[5 : 7]
rownames(df) = letters[1 : 10]

df



# f. read top 6 rows in the data frame - head;
# read top 6 rows from bottom - tail
head(df)
tail(df)

head(df, 3)
tail(df, 1)

# g. statistical summary - summary
summary(df)


# h. combine dataframe column wise - cbind()
# combine dataframe row wise - rbind()

col4 <- data.frame("H" = c(letters[15 : 23], "p"))

df_cbind = cbind(df, col4)

summary(df_cbind)




new_row = data.frame(63, 63, 63)
colnames(new_row) = LETTERS[5 : 7]
rownames(new_row) = "k"

df_rbind = rbind(df, new_row)



# check
df
df_cbind
df_rbind

cbind(df_cbind, df_rbind) 
rbind(df_cbind, df_rbind)


# i. information in data frames = str
str(df)

# k. Count number of NA's
str(df1)
rowSums(is.na(df1)) # count number of NA's per row
colSums(is.na(df1)) # count number of NA's per column


# j. working on NA's in data frame
df1 = df
df1[1, 1] = NA
df1[2, 1] = NA
df1[2, 2] = NA
df1[3, 3] = NA
df1[9, ] = NA


mean(df$X1)
min(df$X3)
max(df$X2)
median(df$X1)
sum(df$X1)

# math functions applied on data with NA
mean(df1$X1)
min(df1$X3)
max(df1$X2)
median(df1$X1)
sum(df1$X1)

# to get the values, despite NA
mean(df1$X1, na.rm = T)
min(df1$X3, na.rm = T)
max(df1$X2, na.rm = T)
median(df1$X1, na.rm = T)
sum(df1$X1, na.rm = T)


# filling NA's - imputing with mean, median, mode
# get dataframe without NA
df1[is.na(df1)]
df1[!is.na(df1)]


colSums(is.na(df1))

# Impute NA using Mean
df1$X1[is.na(df1$X1)] = round(mean(df1$X1, na.rm = T), 2)
df1



# Impute NA using Median
df1$X2[is.na(df1$X2)] = median(df1$X2, na.rm = T)
df1



# Impute NA using Mode
#df1$X3[is.na(df1$X3)] = mode(df1$X3)
#df1


# unique
length(df1$X3)
c
length(unique(df1$X3))

match(df1$X3, u_value)
tabulate(match(df1$X3, u_value))

which.max(tabulate(match(df1$X3, u_value)))

u_value[which.max(tabulate(match(df1$X3, u_value)))]


mode_fun <- function(x){
  u_value = unique(x)
  u_value[which.max(tabulate(match(x, u_value)))]
}

df1$X3[is.na(df1$X3)] = mode_fun(df1$X3)


# make a query : using which function
df[which(df$X1 > 40), ]
df[which(df$X1 > 40), "X3"]
df[which(df$X1 > 40 & df$X2 <= 40), ]  # %in%

# df == df1

df[which(df$X1 > 40), "X5" %in% names(df)]

df[which(df$X3 >= mean(df$X3)), ]


df[-which(df$X1 > 40), ]





# readxl, dplyr, mlbench


