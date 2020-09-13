# Convert from one object to another rather than overwhelm any
# one object’s protocol.

# Provide a method in the object to be converted that converts to
# the new object. Name the method by prepending “as” to the
# class of the object returned.

require 'set'
puts [1, 3, 4, 5, 1, 2].to_set
