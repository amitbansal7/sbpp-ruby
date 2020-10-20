# frozen_string_literal: true

# How do you filter out a part of a collection

# Use select or reject to return new collections containing only elements
# of interest. Enumerate the new collection. Both take one argument block
# that returns a Boolean. Select gives elements for the block returns true,
# reject gives you elements for which the block returns false

puts [1, 2, 3, 4, 5].select(&:even?)
puts [1, 2, 3, 4, 5].reject(&:even?)
