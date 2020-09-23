# frozen_string_literal: true

class PostScriptShapePrinter
  def display(shape)
    (1..shape.size).each do |idx|
      command = shape.command_at(idx)
      arguments = shape.arguments_at(idx)
      case command
      when :line
        print_point(arguments[0])
        space
        print_point(arguments[1])
        space
        puts 'line'
      when :curve
        ##
      end
    end
  end
end

# Have the client send a message to the encoded object. Pass a
# parameter to which the encoded object will send decoded messages

class Shape
  def send_commands_to(object)
    each_command do |command, arguments|
      object.public_send(command, *arguments)
    end
  end

  private

  def each_command
    (1..size).each do |idx|
      command = shape.command_at(idx)
      arguments = shape.arguments_at(idx)
      yield(command, arguments)
    end
  end
end
