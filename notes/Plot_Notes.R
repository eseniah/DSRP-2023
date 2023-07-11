## Install required packages
##install.packages("ggplot2")
install.packages("ggplot2")
install.packages(c("usethis", "credentials"))
## Load required packages
library(ggplot2)

## mpg dataset
str(mpg)
?mpg

ggplot(data = mpg, aes(x = hwy, y = cty)) +
  geom_point() +
  labs(x = "highway mpg",
       y = "city mpg",
       title = "car city vs highway mileage")

## Histogram
# We can set the number of bars with 'bins'
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_histogram(bins = 35) #Default num of bins is 30

# We can set the size of bars with 'binwidth'
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.25) +
  labs(title = "Frequency of Sepal Lengths")

head(iris)

## Density Plot
ggplot(data = iris, aes(x = Sepal.Length, 
                        y = after_stat(count))) + 
                        geom_density() +
                        labs(title = "Frequency of Iris Sepal Lengths",
                             x = "Sepal Length", 
                             y = "density")

## Boxplot  
ggplot(data = iris, aes(x = Sepal.Length)) + 
      geom_boxplot() 

## Making boxplot vertical
ggplot(data = iris, aes(y = Sepal.Length)) + 
  geom_boxplot() 


ggplot(data = iris, aes(x = Sepal.Length, y = Species)) +
  geom_boxplot() #Shows different species lengths 

## Violin Plot
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
  geom_violin() + geom_boxplot(width = 0.2) + # Layering violin plots & boxplots
  labs(title = "Distribution of Iris Sepal Lengths by Species",
       x = "Species",
       y = "Sepal.Length")

## Colors
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
  geom_violin(color = "violet", fill = "lavender") + 
  geom_boxplot(width = 0.2, fill = NA)

## Barplot
ggplot(data = iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_bar((stat = "summary",
           fun = mean)

## Scatter plot
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()

ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
  geom_jitter(width = 0.2)

## Line plot
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_line()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_line(stat = "summary", fun = "mean")

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_smooth() # Line of best fit

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_smooth(se = F) +
  theme_minimal() # Changes background

## Color Scales
ggplot(data = iris, aes(x = as.factor(Sepal.Length), y = Sepal.Width)) +
  geom_point(aes(color = Species)) +
  scale_color_manual(values = c("violet", "lightpink", "red"))

## Factors
mpg$year <- as.factor(mpg$year)

sort(unique(iris$Species))
iris$Species <- factor(iris$Species, levels = c("versicolor", "setosa", "virginica")) #Reorder
