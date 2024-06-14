library(tidyverse)
library(ggplot2)
library(scales)
library(dplyr)
data<-read_csv(file="./mass-tracts.csv")
# Create the density plot
ggplot(data, aes(x = med_income, fill = race, color = race)) +
  geom_density(alpha = 0.5,
               color="black",
               size=0.2,
               bw=20000) +
  scale_x_continuous(labels = dollar_format()) +
  scale_fill_manual(values = c("Hispanic" = "#F8766D", 
                               "Black" = "#7CAE00", 
                               "Asian" = "#00BFC4", 
                               "White" = "#C77CFF")) +
  theme_minimal() +
  labs(
    title = "Median Income for Massachusetts Census Tracts",
    subtitle = "The richest tracts are White",
    x = "Median Income",
    y = NULL,
    fill = "Race",
    color = "Race",
    caption = "The race of each tract is determined by the most numerous racial group\npresent in that tract. Data from the American Community Survey 2022.") +
  theme(
    #plot.title = element_text(size = 20, face = "bold"),
    #plot.subtitle = element_text(size = 14),
    #plot.caption = element_text(size = 10),
    #legend.position = "right"
    axis.ticks.y = element_blank(),
    axis.text.y = element_blank())


