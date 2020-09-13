# Send a message to the argument. Append the class name of the
# receiver to the selector. Pass the receiver as an argument.

class Integer
  def +(number)
    number.add_int(self)
  end

  def add_int(num)
    self + num
  end

  def add_float(num)
    to_f.add_float(num)
  end
end

class Float
  def +(number)
    number.add_float(self)
  end

  def add_float(num)
    self + num
  end

  def add_int(num)
    to_i.add_int(num)
  end
end
