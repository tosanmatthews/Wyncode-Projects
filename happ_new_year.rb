count = (0..10).to_a
 
count.reverse.each.cycle do |num| 
 
	if num == 0
		puts "Happy New Year"
	else
		puts num
	end
	sleep 1
 
end