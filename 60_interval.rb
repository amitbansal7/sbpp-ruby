# frozen_string_literal: true

# How do you code a collection of numbers in sequence?

# Use an interval with start and stop and an optional step value.

(1..3).each do |i|
  puts i
end

puts ''

(0..6).step(2).each do |i|
  puts i
end
