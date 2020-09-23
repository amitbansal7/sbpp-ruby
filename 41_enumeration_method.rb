# frozen_string_literal: true

# How do you provide safe, general access to collection elements?

# Implement a method that executes a block for each element of the collection
# Name the method by concatenating the name of the collection and do/each.

class Department
  def initialize
    @employess = %i[a b]
  end

  def employess_each
    @employess.each do |employee|
      yield(employee)
    end
  end
end

Department.new.employess_each do |employee|
  puts employee
end
