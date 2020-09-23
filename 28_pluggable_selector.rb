# frozen_string_literal: true

class ListPane
  def initialize
    @print_message = :print_string
  end

  def print_element(obj)
    obj.public_send(@print_message)
  end
end

# Add a variable that contains a selector to be performed. Append message to the role
# suggesting instance variable name. Create a composed method that simply perform the selector.

class RelativePoint
  attr_accessor :figure, :location_message

  def self.centered(figure)
    new(figure, :center)
  end

  def initialize(figure, message)
    @figure = figure
    @location_message = message
  end

  def as_point
    figure.public_send(location_message)
  end

  def x
    as_point.x
  end
end

Point = Struct.new(:x, :y) do
  def center
    self
  end
end

rp = RelativePoint.centered(Point.new(12, 15))
puts rp.x

# Now we dont have to make a subclass for CenteredRelativePoint, TopLeftRelativePoint etc
# we can capture the variability in a single selector
