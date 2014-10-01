data = [] 

100.times do |num|
	user_details = {id: num, email: "user_#{num}@gmail.com", username: "user_#{num}", age: rand(18..75)}
	stored_tweets = ["I'm user #{num}", "This is my second tweet!"]
	user_hash = {user: user_details, tweets: stored_tweets}
	data.push(user_hash)
end 

data.reverse!

#puts data

