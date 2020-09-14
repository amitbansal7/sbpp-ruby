# Pass the delegating object (ie. self) in an aditional parameter called for:

# Dictionary using HashTable
class Dictionary
  attr_accessor :hash_table

  def initialize
    @hash_table = HashTable.new
  end

  def put(key, value)
    hash_table.put(key, value, self)
  end

  def hash_of(key)
    key
  end
end

class HashTable
  def put(key, value, collection)
    hsh = collection.hash_of(key)
    puts "Saving #{hsh} -> #{value} for #{collection}"
  end
end

Dictionary.new.put(:some_key, :some_value)
