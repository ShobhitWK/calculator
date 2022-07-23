require_relative "final.rb"

module Calculate

    class Calculator
        def initialize(equation)
            begin
                solved_equation = eval(equation)
                puts ENDER
                puts equation.to_s + " = " + solved_equation.to_s
            rescue SyntaxError => se
                puts "Wrong Equation Provided"
            end
        end
    end
end
