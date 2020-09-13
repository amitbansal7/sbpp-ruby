# Send several messages to “self.”

class Controller
  def controlActivity
    control_initialize
    control_loop
    control_terminate
  end
end
