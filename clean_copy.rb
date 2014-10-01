# Problem 1. Use the ruby times iterator to populate an array named data with 100 hashes the following format...

data = [] 

100.times do |num|
	user_details = {id: num, email: "user_#{num}@gmail.com", username: "user_#{num}", age: rand(18..75)}
	stored_tweets = ["I'm user #{num}", "This is my second tweet!"]
	user_hash = {user: user_details, tweets: stored_tweets}
	data.push(user_hash)
end 

# Problem 2. Print out the tweets for the user with id 2 in the following format...

puts "=============="
puts "user_2's tweets"
puts "==============\n\n"

data[2][:tweets].each do |tweet|
	puts "tweet: #{tweet}"
end

puts "\n"

# Problem 3. Read about the reverse! instance method of the Array class on the web. Use it to reverse the data array

data.reverse!

# Problem 4. Read about the find_index instance method of the Array class. Use it to find the array index of the 
# hash holding user with id 2 and their tweets. Print the index at which the user was found. 

user_id = 2
index = data.find_index {|entry| entry[:user][:id] == user_id} 

puts "user_2 is at index #{index} in the data array\n\n"


# Problem 5. Search data for users between the ages of 18 to 25 and print their username and age
# By chaining together the select and each iterators on data, you can find and print username and age on 1 line

user_ages = (18..25)
puts "SEARCH RESULTS"
puts "username			age"
puts "========			==="

#data.select {|entry| user_ages.include?(entry[:user][:age])}.each do |entry|
#	puts "#{entry[:user][:username]}				#{entry[:user][:age]}"
#end

data.select {|entry| user_ages.include?(entry[:user][:age])}.each {|entry| puts "#{entry[:user][:username]}				#{entry[:user][:age]}"} 
puts "\n"

