# frozen_string_literal: true

# How do you optimize complex Detect or Select/Reject loops?

# prepend lookup to the name of the expensive search or filter method.
# Add an instance variable holding a dictionary to cache results.
# Name the variable by appending cache to the name of the search. Make
# the parameters of the search the keys of the Dictionary and the results
# of the search the values.

class Child
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

@children = [Child.new('a'), Child.new('c'), Child.new('d'), Child.new('b')]

def lookup_child_with_name(name)
  puts 'lookup'
  @children.detect { |child| child.name == name }
end

@cache = {}

def child_with_name(name)
  @cache[name] ||= lookup_child_with_name(name)
end

puts child_with_name('b').name
puts child_with_name('c').name
puts child_with_name('b').name
