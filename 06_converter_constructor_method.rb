require 'date'
require 'set'
class Date
  def self.from_string(str)
    parse(str)
  end
end

# Same as Date.parse
puts Date.from_string('12/01/2020')

class Set
  def self.from_array(arr)
    arr.to_set
  end
end

puts Set.from_array([1, 2, 3, 4, 1, 2])
