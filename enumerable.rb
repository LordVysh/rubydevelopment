class SomeThings
	include Enumerable
	
	THINGS = %w{this that maybe_this whatever}

	def each
		THINGS.each { |thing| yield thing }
	end
end

thing = SomeThings.new
puts "Collect:"
puts thing.collect { |thing| thing + " shit!" }
puts "Detect:"
puts thing.detect { |thing| thing > "this" }
puts "Select:"
puts thing.select { |thing| thing > "that" }
puts "Sort:"
puts thing.sort
puts "Min:"
puts thing.min
puts "Max:"
puts thing.max
