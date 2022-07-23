require_relative "final.rb"

module Calculate

    class Calculator
        def initialize(equation)
            solved_equation = eval(equation)
            puts ENDER
            puts equation.to_s + " = " + solved_equation.to_s
        end
    end
end
