# frozen_string_literal: true

# How do you keep a running value as you iterate over a collection?

# Use inject:into to keep a running value. Make the first argument
# the initial value. Make the second argument a two element block.
# Call the block arguments 'sum' and 'each'. Have the block evaluate to
# the next value of the running value

puts [1, 2, 3, 4, 5].inject(1) { |acc, n|
  acc + (n * n)
}
