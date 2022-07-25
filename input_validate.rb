MATH_REGEX = /\s*-?\d+(?:\s*[-\+\*\/]\s*\d+)+/ # old regex = /\d+? *?\+ *?\d+?/

module InputValidate
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

end
