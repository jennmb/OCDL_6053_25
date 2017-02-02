# create a mapping of state to abbreviation
states = {
	# Key: Oregon; Value: OR
	'Oregon' => 'OR',
	# Key: Florida; Value: FL
	'Florida' => 'FL',
	# Key: California; Value: CA
	'California' => 'CA',
	# Key: New York; Value: NY
	'New York' => 'NY',
	# Key: Michigan; Value: MI
	'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
	# Key: CA; Value: San Francisco
	'CA' => 'San Francisco',
	# Key: MI; Value: Detroit
	'MI' => 'Detroit',
	# Key: FL; Value: Jacksonville
	'FL' => 'Jacksonville'
}

# add some more cities
# adds 'NY' => 'New York'
cities['NY'] = 'New York'
# adds 'OR => Portland'
cities['OR'] = 'Portland'

# puts out some cities
# outputs ----------
puts '-' * 10
# outputs NY State has: New York
puts "NY State has: #{cities['NY']}"
# outputs OR State has: Portland
puts "OR State has: #{cities['OR']}"

# puts some states
# outputs ----------
puts '-' * 10
# outputs Michigan's abbreviation is: MI
puts "Michigan's abbreviation is: #{states['Michigan']}"
# outputs Florida's abbreviation is: FL
puts "Florida's abbreviation is: #{states['Florida']}"

# do it using the state then cities dict
# outputs ----------
puts '-' * 10
# outputs Michigan has: Detroit
puts "Michigan has: #{cities[states['Michigan']]}"
# outputs Florida has: Jacksonville
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
# outputs -----------
puts '-' * 10
# creates for-loop for each item in state hash
# separates pairs into state and abbrev
states.each do |state, abbrev|
	# outputs (state value) is abbreviated (abbrev value)
	puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
# outputs -----------
puts '-' * 10
# for-loop for each item in cities
# separates pairs into abbrev and city
cities.each do |abbrev, city|
	# ouputs (abbrev value) has the city (city value)
	puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
# outputs ----------
puts '-' * 10
# for-loop for each item in  states
# separates pairs into state and abbrev
states.each do |state, abbrev|
	# sets city as cities[abbrev as key]
	city = cities[abbrev]
	# outputs (state value) is abbreviated (abbrev value) and has city (city value)
	puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

# outputs ----------
puts '-' * 10
# by default rubiy says "nil" when something isn't in there
# sets state as states['Texas']
state = states['Texas']

# if not state variable
if !state
	# output Sorry, no Texas.
	puts "Sorry, no Texas."
end

# default values using ||= with the nil result
# sets city as cities['TX']
city = cities['TX']
# ||= or equals
# sets another value for city; Does Not Exist
city ||= 'Does Not Exist'
# outputs The city for the state 'TX' is: (city value)
puts "The city for the state 'TX' is: #{city}"