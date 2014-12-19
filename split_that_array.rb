arr = [1,1,1,2,2,2,2,3,3,3,3]

newarr = []
arr.each do |n|
	newarr << n unless newarr.include? n
end

puts newarr