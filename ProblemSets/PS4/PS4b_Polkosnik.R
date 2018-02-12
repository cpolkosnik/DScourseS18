# Practice JSON exercise part 2

# Question 6.
sparkR
df1 <- (iris)
df1

df <- createDataFrame(iris)
df

class(df1) R data Frame
class(df) #SparkR Data Frame

head(select(df, df$Sepal_Length, df$Species))
head(select(df1, df1$Sepal_Length, df1$Species)) # Will not work because the syntax of SparkR and R are different.

head(filter(df, df$Sepal_Length>5.5))
head(filter(df1, df1$Sepal_Length>5.5)) # Will not work because the syntax of SparkR and R are different.

# Nesting two lines above into one line
head(select(filter(df, df$Sepal_Length>5.5), df$Sepal_Length, df$Species)

head(summarize(groupBy(df, df$Species), mean=mean(df$Sepal_Length), count=n(df$Sepal_Length)))

# Re-assigning above function to a variable
df2 <- head(summarize(groupBy(df, df$Species), mean=mean(df$Sepal_Length), count=n(df$Sepal_Length)))

head(arrange(df2, asc(df2$Species)))
