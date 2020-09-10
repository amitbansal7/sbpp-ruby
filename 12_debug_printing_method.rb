class Association
  attr_accessor :key, :value

  def print_on(io)
    io.put(key)
    io.put('->')
    io.put(value)
  end
end

class Association
  attr_accessor :key, :value

  def inspect
    "#{key} -> #{value}"
  end
end
