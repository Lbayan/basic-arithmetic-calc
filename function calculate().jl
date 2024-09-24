#Create a function 
function calculate()
    #Input: recieve number and operation from user
    println("Enter a number: ")
    num1 = parse(Float64, readline())   
    println("Enter a operation(+,-,*,/): ")
    operation = readline()
    println("Enter another number: ")
    num2 = parse(Float64, readline())
    #Conditionals: based on input -> result
    if operation == "+"
        result = num1 + num2
        println("The result is: ", result)
    elseif operation == "-"
        result = num1 - num2
        println("The result is: ", result)
    elseif operation == "*"
        result = num1 * num2
        println("The result is: ", result)
    elseif operation == "/"
        if num1 != 0 && num2 != 0   # this symbol && means AND, if the first expression is false it will not evaluate the second expression
            result = num1 / num2
            println("The result is: ", result)
        else 
            return println("Error, Invalid Number") #If number 2  = 0, you cant divide 
        end
    else 
        return println("Error, Invlaid Operation")  #If user put another operation -> returns invalid 
    end
end

calculate() # calls the function 