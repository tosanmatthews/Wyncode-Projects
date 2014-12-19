module RightAngles 
	def area
		@side1 * @side2
	end
end
class Quadilateral
	attr_accessor :side
	
	def initialize(side1,side2,side3,side4)
		@side1 = side1
    	@side2 = side2
    	@side3 = side3
    	@side4 = side4
	end
 
	def perimeter
		@side1 + @side2 + @side3 + @side4 
	end
 
	def length	
		@side
	end
end
 
class Trapezoid < Quadilateral
	def initialize(side1,side2,side3,side4)
		@side1 = side1
    	@side2 = side2
    	@side3 = side3
    	@side4 = side4
	end
end
 
class Rectangle < Quadilateral
	include RightAngles
	def initialize(side1,side2)
		@side1 = side1
		@side2 = side2
		@side3 = side1
		@side4 = side2
	end
end
 
class Square < Quadilateral
	include RightAngles
end
 
class Rhombus < Trapezoid
end
 


def test
	squa = Square.new(1,1,1,1)
	puts squa.perimeter == 4
	puts squa.area == 1
	puts squa.length == 1

 puts "Trapezoid test"
	trap = Trapezoid.new(1,5,8,10)
 	puts trap.perimeter == 24
 	
 	puts trap.length == 1

puts "Rectangle test"
	rec = Rectangle.new(1,4)
	puts rec.perimeter == 4
	puts rec.area == 1
	puts rec.length == 1
puts "Rhombus test"
	rum = Rhombus.new(1,1,1,1)
	puts rum.perimeter == 4
	puts rum.length == 1
end

test