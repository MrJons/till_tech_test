require 'receipt.rb'

describe Receipt do

  before :each do
    @receipt = Receipt.new
    @order = Order.new
    @order.contents[['Cappucino', 1], ['Blueberry Muffin', 1]]
  end

  @bill = " \nThe Coffee Connection\n123 Lakeside Way\n16503600708
  \n-----------------\nCappucino(x1) @ 3.85\nBlueberry Muffin(x1) @ 4.05\n
  Total: 7.90\n-----------------\nThank you!\n "

  it 'can render a receipt' do
    expect{@receipt.print_receipt}.to output(@bill).to_stdout
  end

end
