class MyError < StandardError
	def initialize
		super "This is my error, there are many like it, but this one is mine."
	end
end

begin
	raise MyError
end