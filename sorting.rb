def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Believe in the God who believes in you", "The Wolf of Wall Street", "Lean In", "Lila", "Not that kind of Girl", "The Immortals of Meluha"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

