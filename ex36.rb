# defines dead function
def dead
	# prints The bomb detonated.
	print "The bomb detonated. "
	# outputs Your head is blown off.
	puts "Your head is blown off."
	# exits script
	exit(0)
end

# defines finish function
def finish
	# outputs (NL)A key is dropped at your feet.
	puts "\nA key is dropped at your feet."
	# outputs You unlock the device from your neck.
	puts "You unlock the device from your neck."
	
	# prints (NL) A door appears, you walk through it.
	print "\nA door appears, you walk through it."

	# prints (NL) You wake up to the sound of your alarm. 
	print "\nYou wake up to the sound of your alarm."
	# outputs In front of you is a note.
	puts "In front of you is a note."

	# outputs (NL)"CONGRAULATION HOPE TO SEE YOU NEXT TIME" -The Conductor
	puts "\n\"CONGRAULATION! HOPE TO SEE YOU NEXT TIME!\" - The Conductor"
	# exits script
	exit(0)
end

# defines room_three function
def room_three
	# outputs (NL) This is the final riddle!
	puts "\nThis is the final riddle!"

	# outputs I don't have eyes, but once I did see.
	puts "I don't have eyes, but once I did see."
	# outputs Once I had thoughts, but now I'm white and empty.
	puts "Once I had thoughts, but now I'm white and empty."
	# outputs What am I?
	puts "What am I?"

	# prints > 
	print "> "
	# sets answer as input by user
	answer = $stdin.gets.chomp

	# if string in answer includes skull
	if answer.include? "skull"
		# call finish function
		finish
	# otherwise if statement above is false
	else
		# output (NL) Sorry! Wrong answer.
		puts "\nSorry! Wrong answer."
		# call dead function
		dead
	end
end

# define survivors function
def survivors
	# prints (NL) This room is a little different.
	print "\nThis room is a little different. "
	# outputs There are three doors.
	puts "There are three doors."
	# outputs Labeled: 0, 1, and 2
	puts "Labeled: 0, 1, and 2"

	# outputs (NL) On the floor is a note.
	puts "\nOn the floor is a note."
	# outputs - You can save one.
	puts "- You can save one."
	
	# outputs (NL) Do you save person 1, person 2, or neither?
	puts "\nDo you save person 1, person 2, or neither?"

	# prints > 
	print "> "
	# sets choice as input by user
	choice = $stdin.gets.chomp

	# if string in choice includes 1
	if choice.include? "1"  
		# output (NL) Person 1 is now in your party.
		puts "\nPerson 1 is now in your party."
		# call room_three function
		room_three
	# otherwise if string in choice includes 2
	elsif choice.include? "2"
		# output (NL) Person 2 is now in your party.
		puts "\nPerson 2 is now in your party."
		# output (NL) Do you wish to save person 1?
		puts "\nDo you wish to save person 1?"

		# print > 
		print "> "
		# set save as input by user
		save = $stdin.gets.chomp

		# if string in save includes person 1
		if save.include? "person 1"
			# output (NL) Person 1 is now in your party.
			puts "\nPerson 1 is now in your party."
			# call room_three function
			room_three
		# otherwise if save equals no
		elsif save == "no"
			# output You chose to leave person 1.
			puts "You chose to leave person 1. "
			# call room_three function
			room_three
		# if both statements above are false
		else
			# output (NL) What? I don't understand!
			puts "\nWhat? I don't understand!"
			# call dead function
			dead
		end
	# otherwise if choice equals neither
	elsif choice == "neither"
		# call room_three function
		room_three
	# if all statements above are false
	else
		# output (NL) What? I don't understand!
		puts "\nWhat? I don't understand!"
		# call dead function
		dead
	end
end

# defines room_two
def room_two
	# outputs (NL) There was a green house.
	puts "\nThere was a green house."
	# outputs Inside the green house there was a white house.
	puts "Inside the green house there was a white house."
	# outputs Inside the white house there was a red house.
	puts "Inside the white house there was a red house."
	# outputs Inside the red house there were lots of babies.
	puts "Inside the red house there were lots of babies."
	# outputs What is it?
	puts "What is it?"

	# prints > 
	print "> "
	# sets answer as input by user
	answer = $stdin.gets.chomp

	# if string in answer includes watermelon
	if answer.include? "watermelon"
		# output (NL) Correct!
		puts "\nCorrect!"
		# call survivor function
		survivors
	# if statement above is false
	else
		# output (NL) Sorry! Wrong answer.
		puts "\nSorry! Wrong answer."
		# call dead function
		dead
	end
end

# defines room_one function
def room_one
	# outputs (NL) Which creature walks on four legs in the morning,
	puts "\nWhich creature walks on four legs in the morning,"
	# outputs two legs in the afternoon,
	puts "two legs in the afternoon,"
	# outputs and three legs in the evening?
	puts "and three legs in the evening?"

	# prints > 
	print "> "
	# sets answer as input by user
	answer = $stdin.gets.chomp

	# if string in answer includes man
	if answer.include? "man"
		# output (NL) Correct!
		puts "\nCorrect!"
		# call room_two function
		room_two
	# if statement above is false
	else
		# output (NL) Sorry! Wrong answer.
		puts "\nSorry! Wrong answer."
		# call dead function
		dead
	end
end

# defines decision function
def decision
	#outputs (NL) Do you wish to participate?
	puts "\nDo you wish to participate?"

	# prints > 
	print "> "
	# set choice as input by user
	choice = $stdin.gets.chomp

	# if choice equals yes
	if choice == "yes"
		# call room_one function
		room_one
	# otherwise if choice equals no
	elsif choice == "no"
		# output (NL) The Conductor wants you to rethink your answer.
		puts "\nThe Conductor wants you to rethink your answer."
		# output Will you participate?
		puts "Will you participate?"

		# print > 
		print "> "
		# set answer as input by user
		answer = $stdin.gets.chomp

		# if answer equals yes
		if answer == "yes"
			# call room_one function
			room_one
		# otherwise if answer equals no
		elsif answer == "no"
			# call dead function
			dead
		# if both statements above are false
		else
			# output (NL) YES OR NO!
			puts "\nYES OR NO!"
			# call decision function
			decision
		end
	# if both statements above are false
	else
		# output (NL) Answer yes or no.
		puts "\nAnswer yes or no."
	end
end

# defines start function
def start
	# outputs (NL) You wake up to the sound of TV static.
	puts "\nYou wake up to the sound of TV static."
	# outputs A shadow figure appears, introducing itself as The Conductor.
	puts "A shadow figure appears, introducing itself as The Conductor."
	# outputs "Keys will be rewarded to those who answer all riddles correctly.
	puts '"Keys will be rewarded to those who answer all riddles correctly.'
	# outputs Will you play in my little game?" concluded The Conductor.
	puts ' Will you play in my little game?" concluded The Conductor'
	# outputs You notice there is a strange device around your neck.
	puts "You notice there is a strange device around your neck."
	# calls decision function
	decision
end

# calls start function
start