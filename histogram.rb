puts "Please input the string"
text = gets.chomp

words = text.split

frequencies = Hash.new(0)
words.each{|x| puts frequencies[x]+=1}

frequencies = frequencies.sort_by do |count|
    count
end
frequencies.reverse!

frequencies.each {|y, count| puts y + " " + count.to_s}
