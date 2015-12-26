ticket = Object.new

def ticket.owner
  "Brian Bier"
end

def ticket.date
  "01/02/03"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price
  5.50
end

puts "This ticket belongs to #{ticket.owner}.This ticket is for: #{ticket.event} at #{ticket.venue} on #{ticket.date}.
The Performer is #{ticket.performer}. 
The seat is #{ticket.seat} and it cost $ #{"%.2f"% ticket.price}."
puts ""
puts "what information do you want to review? See options below:
-owner
-date
-venue
-event
-performer
-seat
-price
"
request = gets.chomp.downcase

if ticket.respond_to?(request)
  puts ticket.public_send(request) #you can use __send__ as well insead of public_send. the difference is __send__ can acess private methods. The other can't
else
  puts "Sorry no information found"
end
