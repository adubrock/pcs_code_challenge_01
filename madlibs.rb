# This is increment 5.1

class Madlibs
	def self.prompt
		puts "Please enter a noun or noun phrase:"
		noun = gets.strip.downcase

		puts "Please enter an adjective or adjective phrase:"
		adjective = gets.strip.downcase

		puts "Please enter a present tense verb or verb phrase:"
		verb = gets.strip.downcase

		puts "Please enter an adverb or adverb phrase:"
		adverb = gets.strip.downcase

		puts "Please enter an object or object phrase:"
		object = gets.strip.downcase

		puts "Choose one of the following:

		1. In a boat
		2. On a bus
		3. Inside a whale
		4. Clinging under a speeding truck

		by typing the number of your choice:"
		transport = gets.strip
		if transport == "1"
			transport = "in a boat"
		elsif transport == "2"
			transport = "on a bus"
		elsif transport == "3"
			transport = "inside a whale"
		elsif transport == "4"
			transport = "clinging under a speeding truck"
		else
			puts "You did not choose a valid number! By default, your phrase is now 'behind the PCS dinosaur.'
			"
			transport = "behind the PCS dinosaur"
		end

		madlibs = {
			"noun" => noun, 
			"adjective" => adjective, 
			"verb" => verb, 
			"adverb" => adverb, 
			"object" => object,
			"transport" => transport
		}
	end
end

madlibs = Madlibs.prompt

template_array = [
			"The #{madlibs['adjective']} #{madlibs['noun']} suddenly and #{madlibs['adverb']} had to #{madlibs['verb']} the #{madlibs['object']}", 
			"The #{madlibs['noun']} jumped over the #{madlibs['object']}", 
			"The #{madlibs['noun']} says 'let's #{madlibs['adverb']} #{madlibs['verb']} #{madlibs['transport']} to the #{madlibs['adjective']} #{madlibs['object']}!'",
			"He looked at the #{madlibs['noun']} and said 'Hey! Did you see that #{madlibs['object']} #{madlibs['transport']}? #{madlibs['verb'].upcase}! #{madlibs['verb'].upcase}!" 
		]

class SentenceTemplate
	def initialize(template_array)
		@template_array = template_array
		insert
	end

	def insert
		@template_array.each {|x| puts x}
	end
end

final_output = SentenceTemplate.new(template_array)
puts final_output
