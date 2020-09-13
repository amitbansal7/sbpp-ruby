# Represent object creation as a message to one of the arguments
# to the Constructor Method. Add no more than three of these
# Shortcut Constructor Methods per system you develop.

class Point
  attr_accessor :x, :y
  def to_s
    "#{x} #{y}"
  end
end

class Integer
  def comma(y)
    Point.new.tap do |p|
      p.x = self
      p.y = y
    end
  end
end

puts 3.comma(4)
