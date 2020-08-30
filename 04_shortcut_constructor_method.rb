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
