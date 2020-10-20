# frozen_string_literal: true

# How do you ensure that new objects work correctly with hashed collection?

# If you override '=' and use the object with a hashed collection,
# override 'hash' so that two objects that are equal return the
# same hash value

class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def hash
    title.hash ^ author.hash
  end

  def ==(other)
    other.is_a?(Book) && title == other.title && author == other.author
  end
end

b1 = Book.new('ABC', 'amit')
b2 = Book.new('ABC', 'amit')

puts b1.hash
puts b2.hash

puts b1 == b2
