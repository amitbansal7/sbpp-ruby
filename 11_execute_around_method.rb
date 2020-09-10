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
