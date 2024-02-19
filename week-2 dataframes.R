#task -- 1 
student_name <- c("harika", "poojitha", "siri")
age <- c(18, 19, 20)
weight <- c(50, 30, 45)
height <- c(100, 150, 250)
gender <- c("Male", "Female", "Male")

#task -- 2
data <- data.frame(student_name, age, weight, height, gender)
Working <- c("Yes", "No", "No")
df <- cbind(data, Working = Working)
print(df)
print(ncol(df)) 
print(nrow(df)) 
str(df)

#task -- 3
class(state.center)
data.state <- as.data.frame(state.center)

#task -- 4
a <- (rnorm(10))
b <- letters[4:13]
c <- c("yes","no","no","no","no","yes","yes","no","no","yes")
df3 <- data.frame(a,b,c)
df3[with (df3, order(a)),] 

#task -- 5
matrix.data <- matrix(1:40, nrow = 10, ncol = 4)
df <- as.data.frame(matrix.data)
colnames(df) <- paste("variable_", 1:ncol(df))
rownames(df) <- paste("id_", 1:nrow(df))
print(df)

#task -- 6
print(class(VADeaths))
df <- data.frame(VADeaths)
df$Total <- rowSums(df)
df <- df[,c(5,1,2,3,4)]
print(df)

#task -- 7
print(class(state.x77))
df1 <- data.frame(state.x77)
print(nrow(df1[df1$Income < 4300,]))
print(row.names(df1[which.max(df1$Income),]))

#task -- 8
da_fr <- data.frame(swiss[c(1, 2, 3, 10, 11, 12, 13), c("Examination", "Education", "Infant.Mortality")])
da_fr$Infant.Mortality[4] <- NA
Total <- colSums(da_fr, na.rm = TRUE) 
df1 <- rbind(da_fr, Total)
rownames(df1) <- c(rownames(da_fr), "Total")
print(df1)
exam <- df1$Examination / df1["Total","Examination"]
print(exam)
df1 <- cbind(df1,exam)
print(df1)

#task -- 9
df <- data.frame(state.abb, state.area, state.division, state.region, row.names = state.name)
colnames(df) <- substr(colnames(df), 7, 9)

#task -- 10
new.df <- cbind(state.x77, df)
new.df$div <- NULL
new.df <- subset(new.df, select = -c(4, 6, 7, 9, 10))
new.df$Illiteracy.Levels <- ifelse(new.df$Illiteracy >= 0 & new.df$Illiteracy < 1, "Low", ifelse(new.df$Illiteracy >= 1 & new.df$Illiteracy < 2, "Some", "High"))
x <- subset(new.df, reg == "West" & Illiteracy.Levels == "Low")
print(row.names(x)[which.max(x$Income)])
max_income <- max(x$Income)
print(max_income)