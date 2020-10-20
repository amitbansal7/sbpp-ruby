# frozen_string_literal: true

# How do you execute code for each element in a collection

# Send do: \ :each to a collection to iterate over its elements. Send a one
# argument block as the argument to do: it will evaluate once for each element

[1, 2, 3, 4, 5].each do |e|
  puts e
end
