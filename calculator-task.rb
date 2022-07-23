require_relative "final.rb"

begin
    include Calculate
    include InputValidate
    include InfinityLoop
rescue
    include Calculate
    include InputValidate
    include InfinityLoop
end
