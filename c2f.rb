print "Hello. Please enter a Celcius value: "
celsius = gets
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "The result is: "
puts fahrenheit
puts "."

#Checking to see if syntax is ok
#ruby -cw filename  -c checks errors -w checks higher level of warning