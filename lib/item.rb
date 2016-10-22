
class Item

  def initialize(item, quantity)
    @item = item
    @quantity = quantity
  end

  attr_reader :item, :quantity

end
