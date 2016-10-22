require_relative 'menu'
# require_relative 'item'
require_relative 'order'
require_relative 'receipt'

class Till

  JSON_BLOCK = 0

  def initialize(cafe = 'hipstercoffee.json')
    @menu = Menu.new(cafe)
    @order = Order.new
  end


  def print_menu
    @menu.print_menu
  end

  def add_item(item, quantity = 1)
    fail "That item does not exist" if !@menu.menu_items.has_key?(item)
    @order.contents << [item, quantity]
  end

  def print_receipt
    menu_header
    receipt_body
    menu_footer
  end

  def menu_header
    puts ""
    puts "Receipt"
    puts "-----------------"
  end

  def receipt_body
    print_order
    order_total
  end

  def print_order
    order.each{ |item| puts "#{item[1]} X #{item[0]}"}
  end

  def order_total
    @total = 0
    order.each do |item|
      @total += menu[item[0]] * item[1]
    end
    puts "Total: #{'%.2f' % @total}"
  end

  # def menu_footer
  #   puts "-----------------"
  #   puts "Thank you for eating @ #{@cafe_deets['shopName']}"
  #   puts ""
  # end
  # private

  attr_reader :menu, :order, :total, :info, :cafe_deets

end
