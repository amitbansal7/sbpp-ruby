# How do you code complex behavior that is not quire worth its own class?

# Add an instance variable to store a block. Append 'Block' to the Role suggesting
# instance variable name. Create a composed method to evaluate the block to invoke
# the pluggable Behavior.

class PluggableAdaptor
  attr_accessor :get_block, :set_block

  def initialize(get_block, set_block)
    @get_block = get_block
    @set_block = set_block
  end

  def value
    get_block.call
  end

  def value=(new_value)
    set_block.call(new_value)
  end
end

class Car
  def speed_adaptor
    PluggableAdaptor.new(
      lambda {
        "My speed #{@speed}"
      },
      lambda { |value|
        puts 'Setting speed'
        @speed = value
      }
    )
  end
end

car_adapter = Car.new.speed_adaptor
car_adapter.value = 12
puts car_adapter.value
