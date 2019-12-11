x = c(1, 2, 3, 4)
ls()
y = matrix(data = c(1, 2, 3, 4), nrow = 2, ncol = 2)
# default: populate matrix by column
# specify "byrow = TRUE" if populating by row
length(y)
rm(x)

y_sqrt = sqrt(y)
y_squared = y^2


# rnorm(n, m, s)
#create vector of random normal variables of size n, mean m, sd s
# standard mean 0, sd 1
n = rnorm(10, 10, 10)
min(n)

x = rnorm(50)
y = x+rnorm(50, mean = 50, sd =1)
# correlation between two variables
cor(x, y)

set.seed(1303) #set a seed for random function
rnorm(50)

mean(x)
var(x)
sqrt(var(x)) # standard devation
sd(x)

w = rnorm(100)
z = rnorm(100)

plot(w, z, xlab = 'this is the x axis', 
     ylab = 'this is the y axis', 
     main = 'this is the plot for y and x')
cor(w, z)

# Create a PDF file
#pdf("figure.pdf")
#plot(x, y, col='green')
#dev.off()

#create a sequence between 2 numbers
seq(3, 10)
b = 3:10
b
seq(0,1,length = 23)

# contour chart
x = 1:10
y = x
f = outer(x, y, function(x,y)cos(y)/(1+x^2))
contour(x,y,f)
contour(x,y,f,nlevels = 45, add = T)
fa = (f - t(f))/2
contour(x,y,fa, nlevels = 15)
image(x, y, fa)
persp(x, y, fa)
persp(x, y, fa, theta = 30)
persp(x, y, fa, theta = 30, phi = 20)
persp(x, y, fa, theta = 30, phi = 70)
persp(x, y, fa, theta = 30, phi = 40)

# select index: M[row, column]
A = matrix(1:16, 4, 4)
A[2,3]

# select multiple rows and columns with vectors
A[c(1,2), c(3,4)]

# if no index, select all
A[3,]

# exclude some rows or columns with -
A[-3,]
A[,-c(1,2)]

# dimensions
dim(A)

# import data with read.table() or read.csv()
# export data with write.table()
install.packages("ISLR")
Auto = read.table("Auto.data")
Auto = read.table("Auto.data", header = T, na.strings="?")
fix(Auto)
dim(Auto)
names(Auto) # check variable names

plot(Auto$mpg, Auto$horsepower)

plot(Auto$cylinders, Auto$mpg)
attach(Auto) # make variables available by name

#change cylinders to qualitative variable
cylinders = as.factor(cylinders)

plot(cylinders, mpg) # automatically produced as boxplot
plot(cylinders, mpg, col='red')
plot(cylinders, mpg, col='red', varwidth=T)
plot(cylinders, mpg, col='red', varwidth=T, horizontal = T)
plot(cylinders, mpg, col='red', varwidth=T, horizontal = T, xlab = 'MPG', ylab = 'cylinders')

hist(mpg) # histogram
hist(mpg, col=2)
hist(mpg, col=2, breaks=15)

pairs(Auto) # scatterplot matrix
pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)

plot(horsepower, mpg)
identify(horsepower, mpg, name)

summary(Auto)
summary(mpg)
