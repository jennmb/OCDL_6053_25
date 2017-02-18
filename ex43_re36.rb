class Scene
	def enter()
		puts "This scene is not yet configured. Subclass it and implement enter()"
		exit(0)
	end
end

class Engine
	
	def initialize(scene_map)
		@scene_map = scene_map
	end

	def play()
		current_scene = @scene_map.opening_scene()
		last_scene = @scene_map.next_scene('bedroom')

		while current_scene != last_scene
			next_scene_name = current_scene.enter()
			current_scene = @scene_map.next_scene(next_scene_name)
		end

		current_scene.enter()
	end
end

class Dead < Scene
	def enter()
		print "The bomb detonated."
		puts "Your head is blown off."
		exit(0)
	end
end

class WhiteRoom < Scene
	def enter()
		puts "\nYou are abruptly awaken by the sound of TV static."
		puts "A person hidden within the shadows introduces themselves"
		puts "as The Conductor. You notice there is a strange device"
		puts "around your neck."
		puts "\n\t'A key will be given to those who answer all correctly.'"
		puts "\tThe Conductor bellowed. After an excruciatingly long pause,"
		puts "\t'Will you play in my little game?'"

		puts "\nDo you wish to participate?"

		print "> "
		choice = $stdin.gets.chomp

		if choice == "yes"
			return 'room_one'
		elsif choice == "no"
			puts "\"Then I have no use for you,\" said The Conductor"
			return 'dead'
		else
			puts "\nI asked you simple yes or no"
			puts "question, but you can't even do that!"
			return 'dead'
		end
	end
end

class RoomOne < Scene
	def enter()
		puts "\nYou enter the next room."
		puts "\nIn front of you is a screen,"
		puts "\n\tWhich creature walks on four legs in the morning,"
		puts "\ttwo legs in the afternoon,"
		puts "\tand three legs in the evening?"

		print "> "
		answer = $stdin.gets.chomp

		if answer.include? "man" 
			puts "Correct!"
			return 'room_two'
		else 
			puts "Wrong!"
			return 'dead'
		end
	end
end

class RoomTwo < Scene
	def enter()
		puts "\n\tThere was a green house,"
		puts "\tInside the green house there was a white house."
		puts "\tInside the white house there was a red house."
		puts "\tInside the red house there were lots of babies."
		puts "\nWhat is it?"

		print"> "
		answer = $stdin.gets.chomp

		if answer.include? "watermelon"
			puts "Correct!"
			return 'room_three'
		else
			puts "Wrong!"
			return 'dead'
		end
	end
end

class RoomThree < Scene
	def enter()
		puts "\nThis is the final riddle!"

		puts "\tI don't have eyes, but once I did see."
		puts "\tOnce I had thoughts, but now I'm white and empty."
		puts "\tWhat am I?"

		print "> "
		answer = $stdin.gets.chomp

		if answer.include? "skull"
			puts "Correct!"
			return 'bedroom'
		else
			puts "Wrong!"
			return 'dead'
		end
	end
end

class Bedroom < Scene
	def enter()
		puts "\nA key is dropped at your feet."
		puts "You unlock the device from your neck."

		print"\nA door appears, you walk through it."

		print "\nYou wake up to the sound of your alarm."
		puts "\nIn front of you is a note."

		puts "\n\tCONGRAULATION! HOPE TO SEE YOU NEXT TIME!"
		puts "\t\t- The Conductor"
		exit(0)
	end
end

class Map
	@@scenes = {
		'white_room' => WhiteRoom.new(),
		'room_one' => RoomOne.new(),
		'room_two' => RoomTwo.new(),
		'room_three' => RoomThree.new(),
		'dead' => Dead.new(),
		'bedroom' => Bedroom.new(),
	}

	def initialize(start_scene)
		@start_scene = start_scene
	end

	def next_scene(scene_name)
		val = @@scenes[scene_name]
		return val
	end

	def opening_scene()
		return next_scene(@start_scene)
	end
end

a_map = Map.new('white_room')
a_game = Engine.new(a_map)
a_game.play()