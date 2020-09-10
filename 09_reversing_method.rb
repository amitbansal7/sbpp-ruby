class Printer
  def print(an_object)
    an_object.print_on(self)
  end
end

class Point
  def print_on(io)
    io.print(x)
    io.print('@')
    io.print(y)
  end
end
