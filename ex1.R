# Exercise 1 — Function with NULL Default Argument
# Task: Write a function describe_vector() that:
#     
#     Takes two arguments: x (numeric vector) and summary_fun = NULL.
#     If summary_fun = NULL, returns a list with mean, median, and standard deviation.
#     If summary_fun is “mean”, “median”, or “sd”, return only that summary.
#     If summary_fun has any other value, stop with an informative error message.

describe_vector <- function(x, summary_fun = NULL){
    if(is.null(summary_fun)){
        return(list(mean(x), median(x), sd(x)))
    }
    else{
        options <- c("mean","median","sd")
        # match.arg(summary_fun,options)    
        if(summary_fun == "mean") return (mean(x))
        else if(summary_fun == "median") return (median(x))
        else if(summary_fun == "sd") return (sd(x))
        else{
            stop("'arg' should be one of “mean”, “median”, “sd”")
        }
    }
}

num_vector <- c(2,5,5,3)

#working as expected
describe_vector(num_vector)
describe_vector(num_vector,"mean")
describe_vector(num_vector,"median")
describe_vector(num_vector,"sd")

#issues: match.arg works with abbreviation - replaced in the function with "stop message"
describe_vector(num_vector,"s")
