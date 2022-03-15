library(ggplot2)
library(ggthemes)

data <- read.csv(file.choose())

data$Time <- factor(data$Time, levels = data$Time)

plot <- ggplot(data, aes(Time, Temperature, group = 1)) +
  geom_point() + 
  geom_line(size = 1.5, color = "magenta") +
  labs(x = "\nTime",
       y = "Temperature in fahrenheit\n")+
  scale_y_continuous(breaks = c(96,97,98,99,100,101,102,103,104, 105),limits = c(96, 105))+
  geom_text(aes(label = Temperature), color = "white", vjust = -1.5)

plot + theme(
  plot.margin = margin(2,2,2,2, unit = "cm"),
  panel.background = element_rect(fill = "black", color = "gray20"),
  plot.background = element_rect(fill = "black"),
  panel.grid.major = element_line(color = "gray30"),
  panel.grid = element_line(color = "gray30"),
  axis.title = element_text(color = "white", size = rel(1.5)),
  axis.text = element_text(face = "bold", color = "white")
)
