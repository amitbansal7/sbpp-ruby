# Send a named message and let the receiving object decide
# what to do with it.
# Send a message to one of several different kinds of objects, each
# of which executes one alternative
class Film
  def producer
    'Producer'
  end
  alias responsible producer
end

class Entry
  def author
    'Author'
  end
  alias responsible author
end

puts Film.new.responsible
puts Entry.new.responsible
