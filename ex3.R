# Exercise 3 — Argument Value Restriction
# Task: Write a function convert_temperature() that:
#     
#     Takes temp (numeric) and unit (“C”, “F”, or “K”).
#     Converts temp to Celsius.
#     If unit is invalid, stops with an informative error.
#     Add a round = TRUE/FALSE argument to control rounding.
    
convert_temperature <- function(temp,unit,rounding = FALSE){
    if(unit == "C" | unit == "F" | unit == "K"){
        if(unit == "F"){
            temp <- (temp - 32) * 5/9
        } 
        else if(unit == "K"){
            temp <- temp - 273.15  
        }
        else temp <- temp
        if(rounding == TRUE) return(round(temp))
        else return(temp)
    } 
         
    else{
        stop("'unit' should be one of “C”, “F”, “K”")
    }
} 

convert_temperature(100,"C")
convert_temperature(100,"F")
convert_temperature(100,"F",TRUE)
convert_temperature(100,"K")
convert_temperature(100,"H")
convert_temperature(100)