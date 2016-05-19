

def substring(input, dictionary)
	frequencies = Hash.new {0}

	input.downcase.gsub(/[[:punct:]]/, '').split(" ").each do |word|

		dictionary.each do |dictionary_word|
			if word.include? dictionary_word
					frequencies[dictionary_word]+=1
			end
		end
	end
	puts frequencies
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring("below", dictionary)
substring("I am going below.", dictionary)
substring("Howdy partner, sit down! How's it going?", dictionary)