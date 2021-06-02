
# ggplot - it is an enhaned visualization library used to make more no. of plots and charts.
# You can have both 2D and 3D.
# 
# ggplot - grammer of graphics plot
# geom_objectsName : 
# geom - geometry
# objectsName - bar, box, point, hist


?ggplot()



df = read.csv('titanic.csv')
head(df)

df = df[-c(6,9,10,11)]

names(df)




# A. Univariate Analysis : 
# 1. Numerical cols

hist(df$Age, breaks = 10, col = cm.colors(10))
hist(df$Age, breaks = 10, col = cm.colors(10),
     xlab = "Age", main = "Histogram of Age")



plot(density(df$Fare), col = "green")
polygon(x = density(df$Fare), col = "red")



# -- using ggplot ---
ggplot(data = df, mapping = aes(x = Age)) +
  geom_histogram()

ggplot(data = df, mapping = aes(x = Age)) +
  geom_histogram(color = "green")

ggplot(data = df, mapping = aes(x = Age)) +
  geom_histogram(color = "green", fill = "red")


ggplot(data = df, mapping = aes(x = Age)) +
  geom_histogram(color = "green", fill = "red") + 
  labs(title = 'Histogram of Age', 
       xlab = "Age",
       ylab = "Count",
       subtitle = "sutitle .. ")


png("newFile.png")
ggplot(data = df, mapping = aes(x = Age)) +
  geom_histogram(color = "green", fill = "red") + 
  labs(title = 'Histogram of Age', 
       xlab = "Age",
       ylab = "Count",
       subtitle = "sutitle .. ")
dev.off()

# colSums(is.na(df))


# 2. categorical cols
table(df$Sex)

barplot(height = table(df$Sex))
barplot(height = table(df$Sex), col = rainbow(2))
barplot(height = table(df$Sex), col = rainbow(2),
        names.arg = c("F", "M"))   #xlab, ylab, main

# barplot(height = table(df$Sex), col = rainbow(2),
#        names.arg = unique(df$Sex))   #xlab, ylab, main


# -- ggplot --
ggplot(data = df, aes(x = Sex)) + 
  geom_bar(stat = 'count', fill = "green")

ggplot(data = df, aes(x = Sex)) + 
  geom_bar(stat = 'count', fill = cm.colors(2))



# B. Bivariate Analysis

# 1. Numerical vs Numerical 

# scatter plot
plot(x = df$Age, y = df$Fare)

library('hexbin')
plot(hexbin(x = df$Age, y = df$Fare))


boxplot(df$Fare~df$Age)
# Y~aX1 + bX2 + cX3.....


## -- ggplot ---
# ggplot(df, aes(df$Age, df$Fare, fill = Sex)) + 
#   geom_point()

ggplot(df, aes(df$Age, df$Fare, color = Sex)) + 
  geom_point()


# ggplot(df, aes(df$Age, df$Fare, color = rainbow(3))) + 
#   geom_point()




# 2. categorical vs numerical 
# table(df$Survived, df$Age)


# boxplot(Age~Embarked, df)
abc = boxplot(Age~Survived, df)
abc$out
abc

boxplot(Age~Survived, df, col = rainbow(2))

boxplot(Age~Survived, df, col = df$Pclass)


## -- using ggplot ---
ggplot(df, aes(x = Embarked, y = Fare)) + 
  geom_boxplot()


ggplot(df, aes(x = Embarked, y = Fare)) + 
  geom_boxplot(fill = "red")



ggplot(df, aes(x = Embarked, y = Fare)) + 
  geom_boxplot(fill = cm.colors(4))



ggplot(df, aes(x = Embarked, y = Fare, color = Embarked)) + 
  geom_boxplot(outlier.colour = "red", outlier.shape = 5)


ggplot(df, aes(x = Embarked, y = Fare, color = Sex)) + 
  geom_boxplot(outlier.colour = "red", outlier.shape = 5)


# barplot for bivariate
ggplot(data = df, aes(x = Sex, y = Age)) + 
  geom_bar(stat = 'identity')


ggplot(data = df, aes(x = Sex, y = Age, color = Embarked)) + 
  geom_bar(stat = 'identity')


ggplot(data = df, aes(x = Sex, y = Age, color = Embarked)) + 
  geom_bar(stat = 'identity',position = position_dodge()) 




# 3. Categorical vs categorical plot
table(df$Survived, df$Sex)
dotchart(table(df$Survived, df$Sex))


