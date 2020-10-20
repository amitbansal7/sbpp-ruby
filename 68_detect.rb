# frozen_string_literal: true

# how do you search a collection?

# Search a collection by sending it detect:. the first element
# for which the block argument evaluates to true will be retured.

puts %w[abc bcd oinabc 12].detect { |s| s.include?('nabc') }
