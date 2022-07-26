require_relative "input_validate.rb"
require_relative "worker.rb"

STARTER = "==================================Calculator=================================="
ENDER = "=============================================================================="

module InfinityLoop

    include InputValidate
    include Calculate

    while true

        puts STARTER
        print "Do you want to use calculator [y/n]: "
        res = gets.chomp.to_s

        if res == 'y' or res == 'Y'
            system("clear")
            validate = InputValidator.new
            user_input = validate.check
            if user_input["validated"] == true
                Calculator.new(user_input["equation"])
            else
                puts "Enter a valid mathematical equation!"
            end
        elsif res == 'n' or res == 'N'
            puts "Thanks for using Calculator"
            puts ENDER
            break
        else
            puts "Invalid Input!"
            next
        end
    end
end
