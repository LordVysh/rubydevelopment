class Hing
	def initialize(insult)
		@insult = insult
	end

	def insult
		return @insult
	end
end

class ExpletiveHing < Hing
	def insult
		"Fookin' " + super + "!"
	end
end

coo = Hing.new("Coo")
puts coo.insult
twat = ExpletiveHing.new("twat")
puts twat.insult

