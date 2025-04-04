# Exercise 2 — Use of ... (Dot-dot-dot Arguments)
# Task: Write a function flexible_plot() that:
# 
#     Takes two numeric vectors x and y, and ... (optional arguments).
#     Uses plot() to plot x vs y.
#     Passes ... arguments to plot().
#     
# Example:
# 
#     flexible_plot(1:10, 10:1, col = "blue", main = "Custom Plot")


flexible_plot <- function(x,y,...){
    plot(x,y,...)
}

vector1 = c(1:10)
vector2 = c(11:20)

flexible_plot(vector1,vector2)
flexible_plot(vector1,vector2,col="red")
