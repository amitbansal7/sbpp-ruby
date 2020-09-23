# frozen_string_literal: true

# How do you improve the perfomance of a method?

# Set a temporary variable to the value of the expression as soon as it is valid.
# Use the variable instead of the expression in the remaining method.

def bounds
  @bounds ||= begin
    sleep 1
    42
  end
end

4.times do
  bounds
end

# Or

bounds_res = bounds

4.times do
  bounds_res
end
