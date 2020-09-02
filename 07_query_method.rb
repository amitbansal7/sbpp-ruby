class Switch
	attr_accessor :on

	def initialize
		@on = true
	end

	def on?
		!!on
	end
end

puts Switch.new.on?