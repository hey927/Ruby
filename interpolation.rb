print "print your string"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else 
    puts "There are no s in the string"
end

puts "your transformed string is #{user_input}"
