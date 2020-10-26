# frozen_string_literal: true

# How do you write a simple parser?

class Parser1
  def parse(stream)
    parse_line(stream.next_line) until stream.at_end
  end

  def parse_line(string)
    reader = ReadStream.on(string)
    keyword = reader.next_word
    parse_one(reader) if keyword == 'one'
    parse_two(reader) if keyword == 'two'
  end
end

# Put the stream in an instance variable. Have all parsing methods
# work  from the same stream.

class Parser2
  def parse(stream)
    @reader = stream
    parse_line until reader.at_end
  end

  def parse_line
    keyword = reader.next_word
    parse_one(reader) if keyword == 'one'
    parse_two(reader) if keyword == 'two'
  end
end
