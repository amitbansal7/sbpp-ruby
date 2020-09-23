# frozen_string_literal: true

# How do you initialize an instance variable to its default value?

# Write a getting method for the variable, initialize it if necessary
# with a default value method

class Time
  def count
    @count ||= default_count
  end

  private

  def default_count
    0
  end
end

puts Time.new.count
