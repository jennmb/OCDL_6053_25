# sets i as 0
i = 0
# sets numbers as an empty array
numbers = []

# as long as i is less than 6 cont. excecuting this code
while i < 6
	# output At the tip i is (i value)
	puts "At the tip i is #{i}"
	# inputs values used as i to numbers(?)
	numbers.push(i)

	# adds 1 to i value
	i += 1
	# outputs Numbers now: (numbers value)
	puts "Numbers now: ", numbers
	# output At the bottom i is (i value)
	puts "At the bottom i is #{i}"
end

# outputs The numbers: 
puts "The numbers: "

# remember you can write this 2 other way?
# for each item in numbers assign as num
# output num value
numbers.each {|num| puts num }