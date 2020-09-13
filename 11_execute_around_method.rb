# Code a method that takes a Block as an argument. Name the
# method by appending “During: aBlock” to the name of the first
# method that needs to be invoked. In the body of the Execute
# Around Method, invoke the first method, evaluate the block, then
# invoke the second method
class Cursor
  def show_while
    old = Cursor.current_cursor
    show
    yield
    old.show
  end
end

class Cursor
  def show_while
    start
    yield
  ensure
    close
  end
end
