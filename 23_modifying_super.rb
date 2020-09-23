# frozen_string_literal: true

class IntegerAdder
  def initialize
    @sum = default_sum
    @count = default_count
  end

  def default_sum
    0
  end

  def default_count
    0
  end
end

class FloatAdder < IntegerAdder
  def initialize
    @sum = default_sum
    @count = default_count
  end

  def default_sum
    0.0
  end
end

# Override the method and invoke “super,” then execute the code
# to modify the results.

# if default value method is not available in super class.
class SuperFigure
  attr_accessor :color, :size

  def initialize
    @color = :white
    @size = '0,0'
  end
end

class SubFigure < SuperFigure
  def initialize
    super
    @color = :beige
  end
end

puts SubFigure.new.color
