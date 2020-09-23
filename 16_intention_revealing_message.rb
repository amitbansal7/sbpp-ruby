# frozen_string_literal: true

# Send a message to “self.” Name the message so it communicates
# what is to be done rather than how it is to be done. Code a simple method for the message

class ParagraphEditor
  def highlight(rectangle)
    reverse(rectangle)
  end
end

class Collection
  def empty?
    size.zero?
  end
end

class Number
  def reciprocal
    1 / self
  end
end

class Object
  def ==(object)
    self == object
  end
end
