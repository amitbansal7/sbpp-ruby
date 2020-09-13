# Provide a method that returns a Boolean. Name it by prefacing
# the property name with a form of “be”—is, was, will, etc.
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
