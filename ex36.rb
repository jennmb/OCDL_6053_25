def dead
	print "The bomb detonated. "
	puts "Your head is blown off."
	exit(0)
end


def finish
	puts "\nA key is dropped at your feet."
	puts "You unlock the device from your neck."
	
	print "\nA door appears, you walk through it."

	print "\nYou wake up to the sound of your alarm."
	puts "In front of you is a note."

	puts "\n\"CONGRAULATION! HOPE TO SEE YOU NEXT TIME!\" - The Conductor"
	exit(0)
end


def room_three
	puts "\nThis is the final riddle!"

	puts "I don't have eyes, but once I did see."
	puts "Once I had thoughts, but now I'm white and empty."
	puts "What am I?"

	print "> "
	answer = $stdin.gets.chomp

	if answer.include? "skull"
		finish
	else
		puts "\nSorry! Wrong answer."
		dead
	end
end


def surviors
	print "\nThis room is little different. "
	puts "There are three doors."
	puts "Labled: 0, 1, and 2"

	puts "\nOn the floor is a note."
	puts "- You can save one."
	
	puts "\nDo you save person 1, person 2, or neither?"

	print "> "
	choice = $stdin.gets.chomp

	if choice.include? "1" &&
		puts "\nPerson 1 is now in your party."
		room_three
	elsif choice.include? "2"
		puts "\nPerson 2 is now in your party."
		puts "\nDo you wish to save person 1?"

		print "> "
		save = $stdin.gets.chomp

		if save.include? "person 1"
			puts "\nPerson 1 is now in your party."
			room_three
		elsif save == "no"
			room_three
		else
			puts "\nWhat? I don't understand!"
			dead
		end
	elsif choice == "neither"
		room_three
	else
		puts "\nWhat? I don't understand!"
		dead
	end
end


def room_two
	puts "\nThere was a green house."
	puts "Inside the green house there was a white house."
	puts "Inside the white house there was a red house."
	puts "Inside the red house there were lots of babies."
	puts "What is it?"

	print "> "
	answer = $stdin.gets.chomp

	if answer.include? "watermelon"
		puts "\nCorrect!"
		surviors
	else
		puts "\nSorry! Wrong answer."
		dead
	end
end


def room_one
	puts "\nWhich creature walks on four legs in the mornng,"
	puts "two legs in the afternoon,"
	puts "and three legs in the evening?"

	print "> "
	answer = $stdin.gets.chomp

	if answer.include? "man"
		puts "\nCorrect!"
		room_two
	else
		puts "\nSorry! Wrong answer."
		dead
	end
end


def decision
	puts "\nDo you wish to participate?"

	print "> "
	choice = $stdin.gets.chomp

	if choice == "yes"
		room_one
	elsif choice == "no"
		puts "\nThe Conductor wants you to rethink your answer."
		puts "Will you participate?"

		print "> "
		answer = $stdin.gets.chomp

		if answer == "yes"
			room_one
		elsif answer == "no"
			dead
		else
			puts "\nYES OR NO!"
			decision
		end
	else
		puts "\nAnswer yes or no."
	end
end


def start
	puts "\nYou wake up to the sound of TV static."
	puts "A shadow figure appears, introducing itself as The Conductor."
	puts '"Keys will be rewarded to those who answer all correctly.'
	puts ' Will you play in my little game?" concluded The Conductor'
	puts "You notice there is a strange device around to your neck."
	decision
end

start