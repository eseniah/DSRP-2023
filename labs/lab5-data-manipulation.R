getwd()
library(dplyr)
str(netflix1)

## Filter
filter(netflix1, type == "Movie") # filter for rows with "movie" type

## Select
select(netflix1, type:country) # all columns between type and country (inclusive)

## Mutate
netflix1_small <- select(netflix1, release_year, duration, rating) # making a smaller dataset
netflix1_small

netflix1_new <- mutate(netflix1_small,
                year_m = release_year * 2, # doubling release_year
                year_sq = release_year^2) # squaring release_year

## Summarize
summarize(netflix1, 
          mean_year = mean(release_year, na.rm = T),
          .by = type) # summarizing release year by type 

## Arrange
arrange(netflix1, desc(release_year)) # Arranging data by release year from most recent to oldest

## Visualization 
ggplot(data = netflix1_new, aes(x = year_sq)) + 
  geom_histogram(color = "blue", fill = "gray", bins = 20) +
  labs(title = "Frequency of Release Years^2",
       x = "Year^2",
       y = "Frequency") + 
      theme_minimal() # Histogram of release year squared (numeric variable)
