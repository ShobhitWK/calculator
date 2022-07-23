MATH_REGEX = /\d+? *?\+ *?\d+?/

STARTER = "==================================Calculator=================================="
ENDER = "=============================================================================="

class Calculator
    def initialize(equation)
        solved_equation = eval(equation)
        puts equation.to_s + " = " + solved_equation.to_s
    end
end

class InputValidator

    def check
        @check = Hash.new
        print "Enter the equation (only mathematical equation is supported): "
        user_input = gets.chomp.to_s
        if user_input =~ MATH_REGEX
            @check["validated"]=true
            @check["equation"]=user_input
        end
        return @check
    end
end

while true
    puts STARTER
    print "Do you want to use calculator [y/n]: "
    res = gets.chomp.to_s

    if res == 'y' or res == 'Y'
        validate = InputValidator.new
        user_input = validate.check
        if user_input["validated"] == true
            Calculator.new(user_input["equation"])
        else
            puts "Enter a valid mathematical equation!"
        end
    else
        puts "Thanks for using Calculator"
        puts ENDER
        break
    end
end
