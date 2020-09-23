# frozen_string_literal: true

# How do you set and get an instance variables value?

# Access and set its values only through a getting and setting method.

class Point
  attr_accessor :x, :y
end

p = Point.new
p.x = 12

puts p.x
