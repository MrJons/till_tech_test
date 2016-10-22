
class Order

  def initialize
    @contents = []
  end

  def clear
    @contents = []
  end

  attr_reader :contents
end
