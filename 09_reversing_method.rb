# Code a method on the parameter. Derive its name from the original message. Take the original receiver as a parameter to the
# new method. Implement the method by sending the original message to the original receiver.
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
