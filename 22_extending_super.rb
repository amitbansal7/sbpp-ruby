# Override the method and send a message to “super” in the overriding method

class Super
  attr_accessor :a

  def initialize
    @a = 'default A'
  end
end

class Sub < Super
  attr_accessor :b

  def initialize
    super
    @b = 'default B'
  end
end
