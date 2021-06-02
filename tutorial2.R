# Factor, Matrix, Dataframe
# df - make it from vec, list, matix, call it from notepad, csv, excel , basic

# data()

install.packages("dplyr")
# install.packages("dplyr", dependencies = TRUE)

# install.packages("vioplot")
library()

install.packages('readxl')


install.packages('readxl')   #, dependencies = TRUE)
# remove.packages("readxl")

# check if package is installed 
# import libraryName
# import in R - Using library('packageName')

library('readxl')


## Object : Factor ##############

# syntax : factor(x, labels, levels, ordered)


# ?factor
# help(factor)


# check for arguments in Syntax, use : args(keyword)
args(factor)
args(seq)
args(runif)



# vec, list, factor, matrix, dataframe - objects
# Syntax :  object.size(variableName)

# defined as collection of homogeneous elements 
# It displays the sequence of elements and another variable 
# called as Levels that tells the unique element 
# that was present inside the sequence


# factor application - convert categorical to numerical with ordered relationship

f1 <- factor(c("yellow", "blue", "blue", "red", "red", "red"))

shirt_size = c("L",'XL','L', 'M', 'S', 'S', 'M', 'XL')

f2 <- factor(x = shirt_size)

# can't compare different elements as of now
f2[1] < f2[2]

level_c = c("S", "M", "L", 'XL')

f3 = factor(x = shirt_size, levels = level_c)
f3[1] < f3[2]

# S < M < L < XL

f3 = factor(x = shirt_size, levels = level_c, ordered = TRUE)
f3[1] < f3[2]



fac_num <- factor(c(2 : 12, seq(1, 20, 2)))


# check if variable is a factor
is.factor(fac_num)



######### Object :  Matrix ###############
# collection of elements of same data types in 1D or 2D dimension.
# it has rows and columns

# syntax : 
# matrix(x, nrow, ncol, dimnames)

args(matrix)

# create a matrix of 12 elements
aMat = matrix(1 : 12)
aMat = matrix(1 : 12, nrow = 3)
aMat = matrix(1 : 12, ncol = 3)
aMat = matrix(1 : 12, nrow = 3, ncol = 3)
aMat = matrix(1 : 3, nrow = 3, ncol = 3)



bMat = matrix(1 : 12)
bMat = matrix(1 : 12, nrow = 3, byrow = TRUE)
bMat = matrix(1 : 12, ncol = 3, byrow = TRUE)
bMat = matrix(1 : 12, nrow = 3, ncol = 3, byrow = TRUE)
bMat = matrix(1 : 3, nrow = 3, ncol = 3, byrow = TRUE)


seq(from, to, by, length.out)
cMat = matrix(seq(from = 5, by = 10, length.out = 9), nrow = 3, byrow = T)
cMat

set.seed(10)
random_series = as.integer(runif(30, 10, 100))
random_series

dMat = matrix(data = random_series, ncol = 3)
dMat


# 30, 48, 73
dMat[6,]

# display 3rd col
dMat[, 3]

# 20, 63, 42 from 2nd col
dMat[3 : 5, 2]
dMat[c(3 : 5), 2]
dMat[4 : 8, c(1, 3)]
dMat[c(1, 10), c(1, 3)]

dMat

# except col1 entire matrix
dMat[, c(2, 3 )]

dMat[, -1]

# except 3rd and 7th row 
dMat[-c(3, 7), ]



# names

set.seed(10)
random_series = as.integer(runif(30, 10, 100))
random_series

m = matrix(data = random_series, ncol = 3)
m

# names(m)

# naming columns
colnames(m) <- c("C1", "C2", "C3")
m

# naming rows
rownames(m) <- letters[1 : 10]
m



# passing col and row names in dimnames

set.seed(10)
random_series = as.integer(runif(30, 10, 100))
random_series

m = matrix(data = random_series, ncol = 3)
m


m = matrix(data = random_series, ncol = 3, dimnames = list(letters[1 : 10], c("C1", "C2", "C3")))
m



# except col2 , entire dataset
m[, -"C2"]
m[, -2]
m[, c("C1", "C3")]


m[c("a", "c", 'i'), "C3"]


#  how to read col 1
m[, 1]
m[, "C1"]



# Binding Operation
# 1. column binding, rows size should match : cbind()

mat1 = matrix(1 : 3)
mat1

mat2 = matrix(7 : 9, nrow = 3, ncol = 2)
mat2

mat3 = matrix(5 : 3)
mat3


mat4 = matrix(5 : 2)
mat4

mat = cbind(mat1, mat2, mat3, mat4)
mat


# 2. row binding, columns size should match : rbind()

mat1 = matrix(1 : 3, ncol = 3)
mat1

mat2 = matrix(7 : 9, nrow = 2, ncol = 3)
mat2

mat3 = matrix(5 : 3, ncol = 3)
mat3


mat4 = matrix(5 : 2, ncol = 4)
mat4

mat = rbind(mat1, mat2, mat3, mat4)
mat


typeof(mat)

is.vector(mat)
is.matrix(mat)

# create a matrix : seq, random, vec
args(matrix)

