# frozen_string_literal: true

# How do you present a collection with one of many sort orders?

# Return a sorted copy of the collection by sending 'asSortedCollection' to the collection
# Send asSortedCollection(block) for custom sort orders

puts [5, 4, 3, 2, 1].sort { |a, b|
  b <=> a
}.join(', ')

puts [5, 4, 3, 2, 1].sort { |a, b|
  a <=> b
}.join(', ')
