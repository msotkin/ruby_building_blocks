
def caesar_cipher(input, shift) 
	encryption = ""
	input.scan(/./) do |x| #Search for all of the characters in input
		x.each_byte do |c| #Change characters into ASCII
			if c >= 65 && c <= 90 #Make sure characters wrap from z to a, staying in the same case
				c = c + shift.to_i
				if c > 90
					c =- 26
				end
				encryption << c
			elsif c >= 97 && c <= 122
				c = c + shift.to_i
				if c > 122
					c =- 26
				end
				encryption << c
			else
				encryption << c
			end
		end
	end
	puts encryption #Print cipher to screen
end

puts "What would you like to encode?" #Get input for a string
input = gets.chomp

puts "What is your shift factor?" #Get input for a shift factor
shift = gets.chomp

caesar_cipher(input, shift)