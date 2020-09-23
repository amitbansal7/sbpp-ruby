# frozen_string_literal: true

# How do you provide access to an instance variable

# Provide a method that returns the value of the variable.
# Give it the same name as the variable

class Book
  attr_reader :author
end
