getwd()
library(ggplot2)
str(netflix1)
head(netflix1, 5)
## Plot 1
ggplot(data = netflix1, aes(x = release_year)) +
  geom_histogram(bins = 30) +
  labs(title = "Netflix Show Release Date",
       x = "Release Year") +
      theme_minimal()

## Plot 2
ggplot(data = netflix1, aes(x = type, y = release_year)) +
  geom_bar(color = "violet", fill = "lavender", stat = "summary",
           fun = "mean") +
  labs(title = "Netflix Type & Release", x = "Type", y = "Release Year")

## Plot 3
ggplot(data = netflix1, aes(x = duration, y = release_year)) +
  geom_jitter(color = "red", width = 0.2) +
  labs(title = "Netflix Duration & Release", x = "Duration (mins)", 
       y = "Release Year")

ggplot(data = netflix1, aes(x = release_year, y = duration) +
  geom_point() +
  geom_line()

  