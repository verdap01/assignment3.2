# Week 3 Assignment 3.2
# Author: Verda Pinar
# Student ID: 14857642

# Q3.2.1------------------------------------------------------------------------

remind_me <- function() {
  to_do <-
    c(
      "Finish R assignment due Friday",
      "Buy fairy lights for friend's birthday on Monday",
      "Help friend move on Wednesday",
      "Rewatch R lectures for exam next Friday"
    )
  return(to_do)
}

cheat <- function(question) {
  if (question == 1) {
    print("set.seed(14857642)")
    print("exam_grades <- trunc(rnorm(70, mean = 6, sd = 2))")
    print(
      "hist(exam_grades, col = 'lightgreen', main = 'Histogram of Exam Grades',xlab = 'Grades', ylab = 'Frequency of Students')"
    )
  } else if (question == 2) {
    print("schipholdata <-read.csv('/path/to/file/schiphol_data.csv')")
    print(
      "plot(schipholdata$DATE, schipholdata$TMIN, type = 'p', main = 'Minimum Temperatures Recorded at Schiphol Airport Between 1951-2021', xlab = 'Time', ylab = 'Temperature')"
    )
  } else if (question == 3) {
    print("install.packages('titanic')")
    print("library('titanic')")
    print("t_gender <- titanic_train$Sex")
    print(
      "t_alive <- factor(titanic_train$Survived, levels = c(0, 1), labels = c('dead', 'alive'))"
    )
    print("titanicdata <- data.frame(t_gender, t_alive)")
    print(
      "ggplot(titanicdata, aes(x = t_gender, fill = t_alive)) + geom_bar(position = 'stack') + labs(x = 'sex', y = 'count', fill = 'How did it go?')"
    )
  } else
    print("Question number must be 1, 2 or 3")
}

# https://github.com/verdap01/assignment3.2

# Q3.2.2------------------------------------------------------------------------

library("tidyverse")
library("dplyr")


# The following function creates concentric squares with random colors in each layer.

make_art <- function(seed) {
  set.seed(seed)
  
  random_color <- function() {
    rgb(runif(1), runif(1), runif(1))
  }
  
  x = c(1, 150, 150, 1)
  y = c(1, 1, 150, 150)
  square = tibble(x = x, y = y)
  
  ggplot() +
    geom_polygon(
      data = square,
      aes(x = x, y = y),
      fill = random_color(),
    ) +
    geom_polygon(data = square, aes(x = c((x[1] + 5), (x[2] - 5), (x[3] -
                                                                     5), (x[4] + 5)), y = c((y[1] + 5), (y[2] + 5), (y[3] - 5), (y[4] - 5))), fill =
                   random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 10), (x[2] - 10), (x[3] -
                                                                       10), (x[4] + 10)), y = c((y[1] + 10), (y[2] + 10), (y[3] - 10), (y[4] -
                                                                                                                                          10))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 15), (x[2] - 15), (x[3] -
                                                                       15), (x[4] + 15)), y = c((y[1] + 15), (y[2] + 15), (y[3] - 15), (y[4] -
                                                                                                                                          15))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 20), (x[2] - 20), (x[3] -
                                                                       20), (x[4] + 20)), y = c((y[1] + 20), (y[2] + 20), (y[3] - 20), (y[4] -
                                                                                                                                          20))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 25), (x[2] - 25), (x[3] -
                                                                       25), (x[4] + 25)), y = c((y[1] + 25), (y[2] + 25), (y[3] - 25), (y[4] -
                                                                                                                                          25))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 30), (x[2] - 30), (x[3] -
                                                                       30), (x[4] + 30)), y = c((y[1] + 30), (y[2] + 30), (y[3] - 30), (y[4] -
                                                                                                                                          30))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 35), (x[2] - 35), (x[3] -
                                                                       35), (x[4] + 35)), y = c((y[1] + 35), (y[2] + 35), (y[3] - 35), (y[4] -
                                                                                                                                          35))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 40), (x[2] - 40), (x[3] -
                                                                       40), (x[4] + 40)), y = c((y[1] + 40), (y[2] + 40), (y[3] - 40), (y[4] -
                                                                                                                                          40))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 45), (x[2] - 45), (x[3] -
                                                                       45), (x[4] + 45)), y = c((y[1] + 45), (y[2] + 45), (y[3] - 45), (y[4] -
                                                                                                                                          45))), fill = random_color()) +
    geom_polygon(data = square, aes(x = c((x[1] + 50), (x[2] - 50), (x[3] -
                                                                       50), (x[4] + 50)), y = c((y[1] + 50), (y[2] + 50), (y[3] - 50), (y[4] -
                                                                                                                                          50))), fill = random_color())
  
}



