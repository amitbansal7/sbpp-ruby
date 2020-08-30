class Point
  attr_accessor :x, :y
  def self.new_point(r, theta)
    allocate.tap do |p|
      p.x = r * Math.cos(theta)
      p.y = r * Math.sin(theta)
    end
  end

  def to_s
    "#{x}, #{y}"
  end
end

puts Point.new_point(5, 90)
