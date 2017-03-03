# sets i as 0
i = 0
# sets numbers as an empty array
numbers = []

# while i is less than 6
while i < 6
	# output At the top i is (i value)
	puts "At the top i is #{i}"
	# pushes values of i into numbers
	numbers.push(i)

	# adds 1 to i value
	i += 1
	# output Numbers now: 
	# output numbers value
	puts "Numbers now: ", numbers
	# output At the bottom i is (i value)
	puts "At the bottom i is #{i}"
end

# outputs The numbers: 
puts "The numbers: "

# remember you can write this 2 other ways?
# assigns each element of numbers to num
# outputs num value
numbers.each {|num| puts num }