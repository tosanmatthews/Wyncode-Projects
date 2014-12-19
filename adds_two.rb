def add_two(number)
	if number.respond_to? :+
		if number.class == String
			number.to_i	+ 2
		else
			if number.respond_to? :push
				number.push 2
			else
				number + 2
			end
		end
	elsif number.nil?
		2
	else
		number
	end
end


def test_add_two_test
	puts add_two(1) == 3
	puts add_two(1.0) == 3.0
	puts add_two(nil) == 2
	puts add_two({}) == 2
	puts add_two([]) == 2
	puts add_two([1,2,3]) == [3,4,5]
	puts add_two(false) == false
	puts add_two("false") == 2
	puts add_two("2") == 4
end

test_add_two_test