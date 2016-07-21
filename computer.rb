movies = {
    'DDLJ' => 4
}

puts "What action do you want to perform? -add, update, display, delete"
choice = gets.chomp

case choice
when "add"
    puts "What is the name of the movie you would like to add?"
    title = gets.chomp
    title = title.to_sym
    
    puts "What rating would you like to give to this movie?"
    rating = gets.chomp
    rating = rating.to_i
    
    if movies[title.to_sym] == nil
        movies[title] = rating
        print "Your movie rating was added successfully!"
    else
        print "The movie already exists"
    end
    
when "update"
    puts "What is the name of the movie you would like to update?"
    title = gets.chomp
    title = title.to_sym
    
    if !movies[title]
        print "Your movie is not present in the hash"
    else
        puts "What is the new rating you would like to give to this movie?"
        rating = gets.chomp
        rating = rating.to_i
        movies[title] = rating
    end

when "display"
    movies.each do |movies, rating|
        puts "#{movies}: #{rating}"
    end
    
when "delete"
    puts "What is the name of the movie you would like to delete?"
    title = gets.chomp
    title = title.to_sym
    
    if !movies[title]
        puts "Error!"
    else
        movies.delete(title)
    end

else
    puts "Error!"
end

