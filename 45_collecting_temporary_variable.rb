# frozen_string_literal: true

# How do you gradually collect values to be used later in a method?

puts %w[1 2 3 4 5].inject(0) { |acc, a|
  acc + a.to_i
}

# When you need to collect or merge objects over a complex enumeration
# use a temporary variable to hold the collection or merged value

def deep_copy
  answer = []
  %w[1 2 3 4 5 6].each do |elem|
    answer << elem.dup
  end
  answer
end

puts deep_copy
