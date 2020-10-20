# frozen_string_literal: true

# How do you remove the duplicates from a collection?

# Send as_set to the collection. The result will have all duplicates
# removed

require 'set'

puts [1, 2, 3, 4, 5, 1, 2, 3, 1].to_set
