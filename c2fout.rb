print "Hello. Please enter a celsius value: "
celsius = gets.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close

num = File.read("temp.out")
puts "The number is " + num
print "Result: "
puts fahrenheit