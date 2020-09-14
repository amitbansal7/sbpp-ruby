# Delegate messages unchanged.

class Vector
  attr_accessor :elements

  def initialize
    @elements = []
  end

  def set_elements(elms)
    @elements = elms
  end

  def each
    @elements.each do |e|
      yield(e)
    end
  end

  def size
    @elements.size
  end
end

vec = Vector.new
vec.set_elements([1, 2, 3, 4])
vec.each do |e|
  puts e * e
end
puts "Size = #{vec.size}"
