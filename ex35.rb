# defines gold_room function
def gold_room
	# outputs This room is full of gold. How much do you take?
	puts "This room is full of gold. How much do you take?"

	# prints > 
	print "> "
	# sets num as input by user (coverts string to integer)
	num = $stdin.gets.chomp.to_i
	# sets choice as num
	choice = num

	# this line has a bug, so fix it (fixed)
	# if choice is greater than than or equal to 0
	# OR if choice is less than or equal to 50 
	if choice >= 0 || choice <= 50	
		# set how_much as choice
		how_much = choice
	# if the statement above is false
	else
		# call dead function that takes "Man, learn to type a number." parameter
		dead("Man, learn to type a number.")
	end

	# if how_much is less than 50
	if how_much < 50
		# output Nice, you're not greedy, you win!
		puts "Nice, you're not greedy, you win!"
		# exit script
		exit(0)
	# if statement above is false
	else
		# call dead function that takes "You greedy bastard!" parameter
		dead("You greedy bastard!")
	end
end

# defines bear_room  function
def bear_room
	# outputs There is a bear here.
	puts "There is a bear here."
	# outputs The bear has a bunch of honey.
	puts "The bear has a bunch of honey."
	# outputs The fat bear is in front of another door.
	puts "The fat bear is in front of another door."
	# outputs How are you going to move the bear?
	puts "How are you going to move the bear?"
	# sets bear_moved as false (boolean)
	bear_moved = false

	# while true (boolean)
	while true
		# print > 
		print "> "
		# set choice as input by user
		choice = $stdin.gets.chomp

		# if choice equals take honey
		if choice == "take honey"
			# call dead function
			# that takes "The bear looks at you then slaps your face off." parameter
			dead("The bear looks at you then slaps your face off.")
		# otherwise if choice equals taunt bear AND NOTbear_moved
		elsif choice == "taunt bear" && !bear_moved
			# output The bear has moved from the door. You can go through it now.
			puts "The bear has moved from the door. You can go through it now."
			# set bear_moved as true
			bear_moved = true
		# otherwise if choice equals taunt bear AND bear_moved 
		elsif choice == "taunt bear" && bear_moved
			# call dead function
			# that takes "The bear gets pissed off and chews your legs off." parameter
			dead("The bear gets pissed off and chews your legs off.")
		# otherwise if choice equals open door AND bear_moved
		elsif choice == "open door" && bear_moved
			# call gold_room function
			gold_room
		# if all statement above are false
		else
			# output I got no idea what that means.
			puts "I got no idea what that means."
		end
	end
end

# defines cthulhu_room function
def cthulhu_room
	# outputs Here you see the great evil Cthulhu.
	puts "Here you see the great evil Cthulhu."
	# outputs He, it whatever stares at you and you go insane.
	puts "He, it, whatever stares at you and you go insane."
	# outputs Do you flee for your life or eat your head?
	puts "Do you flee for your life or eat your head?"

	# prints > 
	print "> "
	# sets choice as input by user
	choice = $stdin.gets.chomp

	# if string in choice includes flee
	if choice.include? "flee"
		# call start function
		start
	# otherwise if string in choice includes head
	elsif choice.include? "head"
		# call dead function
		# that takes "Well that was tasty!" parameter
		dead("Well that was tasty!")
	# if both statements above are false
	else
		# call cthulhu_room fucntion
		cthulhu_room
	end
end

# defines dead function
# takes why parameter
def dead(why)
	# output why 
	# output Good job!
	puts why, "Good job!"
	# exits script
	exit(0)
end

# defines start function
def start
	# outputs You are in a dark room.
	puts "You are in a dark room."
	# outputs There is a door to your right and left.
	puts "There is a door to your right and left."
	# outputs Which one do you take?
	puts "Which one do you take?"

	# prints > 
	print "> "
	# sets choice as input by user
	choice = $stdin.gets.chomp

	# if choice equals left
	if choice == "left"
		# call bear_room
		bear_room
	# otherwise if choice equals right 
	elsif choice == "right"
		# call cthulhu_room
		cthulhu_room
	# if both statements above are false
	else
		# call dead function
		# that takes "You stumble around the room until you starve." parameter
		dead("You stumble around the room until you strave.")
	end
end

# calls start function
start