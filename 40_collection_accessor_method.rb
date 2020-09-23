# frozen_string_literal: true

# How do you provide access to an instance variable that holds a collection?

# Provide methods that are implemented with delegation to the collection.
# To name the methods, add the name of the collection to the collection messages

class Department
  def add_employee(employee); end

  def remove_employee(employee); end

  def employs(employee); end
end
