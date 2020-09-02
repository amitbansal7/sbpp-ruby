class Event
	include Comparable
	
	attr_accessor :val
	
	def initialize(val)
		self.val = val
	end

	def <=>(other)
		self.to_num <=> other.to_num
	end
	def to_num
		val
	end
end

puts Event.new(12) <=> Event.new(20)
