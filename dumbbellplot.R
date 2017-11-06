s <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/school_earnings.csv")
s
# order factor levels by men's income (plot_ly() will pick up on this ordering)

s$School <- factor(s$School, levels = s$School[order(s$Men)])

library(plotly)
plot_ly(s, color = I("grey")) %>%
  add_segments(x = ~Women, xend = ~Men, y = ~School, yend = ~School, showlegend = FALSE) %>%
  add_markers(x = ~Women, y = ~School, name = "Women", color = I("black")) %>%
  add_markers(x = ~Men, y = ~School, name = "Men", color = I("blue")) %>%
  layout(
    title = "Gender earnings disparity",
    xaxis = list(title = "Annual Salary (in thousands)"),
    margin = list(l = 65)
  )

