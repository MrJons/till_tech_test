require_relative 'order'
require_relative 'menu_parser'

class Receipt

  def initialize

  end

  def print_receipt
    receipt_header
    receipt_body
    receipt_footer
  end

  def receipt_header
    puts ""
    cafe_name
    cafe_address
    cafe_phone
    puts "-----------------"
  end

  def cafe_name
    puts MenuParser.data_hash[0]['shopName']
  end

  def cafe_address
    puts MenuParser.data_hash[0]['address']
  end

  def cafe_phone
    puts MenuParser.data_hash[0]['phone']
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

  def receipt_footer
    puts "-----------------"
    puts "Thank you for eating @ #{@cafe_deets['shopName']}"
    puts ""
  end

end
