module Lexicon

	def Lexicon.scan(sentence)
		# break up the sentence into words
		words = sentence.split(' ')
		# for each word
		words.each {|item| 
			if item =~ /\A[0-9]+\z/
				item.to_i
			elsif item == 
				puts " go #{item}."
			else
				puts "error"
			end }
			# if it's number make it a number
			# it it's a word, find out what kind
			# otherwise, it's an error
	end

end