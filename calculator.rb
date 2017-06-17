result_array = []




def calculate (str, result_array)
array = str.each_char.to_a

# bug alert - wont allow calculating of double digits as is: 
int = array[0].to_i
int2 = array[-1].to_i



if array.include? ("+")
p result = int + int2
string = "#{int} + #{int2} = #{result}"

result_array << string

elsif array.include? ("-")
p  result = 	int - int2
 string = "#{int} - #{int2} = #{result}"

result_array << string


elsif array.include? ("*")
p result = int * int2	
string = "#{int} * #{int2} = #{result}"

result_array << string


elsif array.include? ("/")
if int == 0 || int2 == 0
	puts " sorry can't divide by zero"
else	

 	
p result = int / int2
string = "#{int} / #{int2} = #{result}"
result_array << string
end




else
	"cannot perform operation"
end

end

finish = "started"
until finish == "done"

puts "single digit Calculater has started, please type done when finished"
str = gets.chomp
if str.length > 5
	puts "Please use only single digits"
	puts "calculation not done correctly"


else
end

if str != "done"
calculate(str, result_array)
else
	finish = "done"
	puts "thank you, here are your results:"
	p result_array

end


end

#calculate(5, "+", 7)