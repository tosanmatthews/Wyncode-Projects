puts "Alone in the dark"
puts "How scared of the dark are you...wanna play?"


def ask(question)
	say(question)
	gets.chomp
end

def say(statement)
	puts statement
end

##
# The scarecrow scenario
##
def scarecrow
	puts "Its pitch black and you hear someone walking towards you."
	puts "Options: You walk away from it, you walk towards it."

	second_answer = ask
	case second_answer
	when "You walk away from it"
		puts "\ A Scarecrow runs and grabs you!\ Scarecrow: \"RAAAHH! You are mine!\""
	else
		puts "Scarecrow: \"Wow you're really brave I wont hurt you\""
	end
end

question = "Options: Be the first in, stay standing, use your phone as a torch"
first_answer = ask(question)
case first_answer
when "Be the first in"
	police_man

###
# spotter 
###
when "stay standing"
	puts <<-END
	   It's so dark, no ones around. You hear a door creek open.
	END

	question = "Options:", "\t1. I'm scared i should call a cab", "\t2. pretend like you did'nt hear it."

    second_response = nil
 	until ["1","2"].include? second_response
        second_response = ask(question)
		case second_response
		when "1", "I'm scraed i should call a cab"
			say "You try and call a cab but your phone battery dies."
		when "2"
			say "Something for case 2"
		else
			# user entered garbage
			say "You: \"I'm not scared of no spooky sound.\""
		end
	end
	# options must be one of "1" or "2"

###
# using your phone as a torch
###
when "use your phone as a torch"
	puts "Your phone battery is very low but you have a rusty lighter"

	question = "Options: 1. You use your phone?, 2. You use the rusty lighter?"

	option3 = ask(question)
	case option3
	when "1"
		puts "Your phone battery dies and now you have no one to call"
	else
		puts "You use the rusty lighter and light it and you see a scary Scarecrow in front of you and it grabs you."
	end

###
# default
###
else
	puts "Loud foot steps come towards you."
	puts "Scarecrow: \"Now you're mine.\""
end