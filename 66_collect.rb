# frozen_string_literal: true

# How do you operate on the result of a message sent to each object in the collection?

# Use collect to create a new collection whose elements are the results of evaluating
# the block passed to collect with each element of the original collection. Use the new collection

puts [1, 2, 3, 4, 5].map { |e| e * 2 }
puts
puts [1, 2, 3, 4, 5].collect { |e| e * 2 }
