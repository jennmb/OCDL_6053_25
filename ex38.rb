# sets ten_things as Apple Oranges Crows Telephone Light Sugar
ten_things = "Apples Oranges Crows Telephone Light Sugar"

# outputs Wait there are not 10 things in that list. Let's fix that.
puts "Wait there are not 10 things in that list. Let's fix that."

# sets stuff as the sparation of words in ten_things
stuff = ten_things.split(' ')
# sets more_stuff as an array
more_stuff = ["Day","Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

# as long as stuff does not contain 10 items...
while stuff.length != 10
	# sets next_one as the last item in more_stuff
	next_one = more_stuff.pop
	# output Adding: (next_one value)
	puts "Adding: #{next_one}"
	# pushs the value of next_one into stuff
	stuff.push(next_one)
	# output There are (returns stuff length) items now.
	puts "There are #{stuff.length} items now."
end

# outputs There we go: (stuff value)
puts "There we go: #{stuff}"

# outputs Let's do some things with stuff.
puts "Let's do some things with stuff."

# outputs the second item in stuff
puts stuff[1]
# takes out the last item in stuff (?)
puts stuff[-1] # whoa: funny
# outputs the item that was popped out of stuff
puts stuff.pop()
#
puts stuff.join(' ')
# places a pound between items 3-5
puts stuff[3..5].join("#")