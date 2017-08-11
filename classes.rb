class MyClass
	def initialize(x)
		@arbitrary = x
	end

	def arb3
		return @arbitrary ** 3
	end
end

thing = MyClass.new(2)
puts thing.arb3
