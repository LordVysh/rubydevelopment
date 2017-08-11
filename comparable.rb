class Train
	include Comparable

	attr_accessor :num_cars

	def <=>(other)
		@num_cars <=> other.num_cars
	end

	def initialize(name, num_cars)
		@name = name
		@num_cars = num_cars
	end

end

a = Train.new("A Line", 5)
b = Train.new("H Line", 12)
c = Train.new("Municipal", 2)

puts "a < b: ", a < b
puts "b >= c: ", b >= c
puts "c > a: ", c > a
puts "a.between?(c, b): ", a.between?(c, b)
