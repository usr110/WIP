dat <- read.csv("WIP/assets/dataset/data.csv", header = T)
plot(dat$dose, dat$RR, main = "Dose Response Curve", xlab = "Relative Risk", ylab = "Dose")
library(ggplot2)
ggplot2::ggplot(dat, aes(dose, RR)) + geom_point() + 
  xlab("Dose") +
  ylab("Relative Risk") + 
  ggtitle("Dose Response Curve")

library(plotly)
gg <- ggplotly(ggplot2::ggplot(dat, aes(dose, RR)) + geom_point() + 
           xlab("Dose") +
           ylab("Relative Risk") + 
           ggtitle("Dose Response Curve")
)
htmlwidgets::saveWidget(as.widget(gg), file.choose())
