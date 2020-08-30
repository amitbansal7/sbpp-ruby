class Point
  attr_accessor :x, :y

  def initialize(x, y)
    set(x: x, y: y)
  end

  def set(options = {})
    @x = options[:x]
    @y = options[:y]
    self
  end

  def to_s
    "#{x} #{y}"
  end
end

puts Point.new(3, 4)
