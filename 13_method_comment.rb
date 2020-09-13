# Communicate important information that is not obvious from the
# code in a comment at the beginning of the method.
class Bin
  def run
    # Tell my station to process me
    station.process(self)
  end
end

# Code is equivalent to comment, so comment is not needed.
