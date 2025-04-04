# Exercise 4 — Defensive Refactoring
# Task: Refactor this ugly function to make it clear, functional, and robust:
#     
#     complex_sum <- function(x){
#         result <- 0
#         for(i in 1:length(x)){
#             if(!is.na(x[i])){
#                 if(x[i] >= 0){
#                     result <- result + x[i]
#                 }
#             }
#         }
#         return(result)
#     }
# 
# Include input checks and NA handling.

simple_sum <- function(x){
    return(sum(x[x>=0],na.rm=TRUE))
}

vector <- c(-2,2,2,NA)
simple_sum(vector)