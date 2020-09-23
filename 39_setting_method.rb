# frozen_string_literal: true

# How do you change tha value of an instance variable

# Provide a method with the same name as the variable. Have it take a single parameter
# the value to be set

class Book
  attr_writer :author
end
