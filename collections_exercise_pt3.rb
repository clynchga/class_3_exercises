# Use find_index method to find the array index of the hash holding the user with id 2 and their 
# tweets. Print the index at which the user was found, for example:

# a = [ "a", "b", "c" ]
# a.index("b")              #=> 1
# a.index("z")              #=> nil
# find_index {|item| block}
# a.index { |x| x == "b" }  #=> 1

data = [] 

100.times do |num|
	user_details = {id: num, email: "user_#{num}@gmail.com", username: "user_#{num}", age: rand(18..75)}
	stored_tweets = ["I'm user #{num}", "This is my second tweet!"]
	user_hash = {user: user_details, tweets: stored_tweets}
	data.push(user_hash)
end 

# index looks for values within an array

index = 0 

data.each do |i| 
	if data[i][:user][:id].index(2) 
		index = i
	else 
	end
end

puts "user_2 is at index #{index} in the data array"