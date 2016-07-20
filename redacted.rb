puts "Please input the string"
text = gets.chomp
puts "enter the string to be redacted"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
