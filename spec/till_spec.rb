require 'till.rb'

describe Till do

  before :each do
    @till = Till.new
    @order = Order.new
  end

  xit 'can select items with quantities' do
    @till.add_item('Cappucino', 1)
    expect(@order.contents).to eq([['Cappucino', 1]])
  end

  xit 'gives error if non-existent product is chosen' do
    false_add = @till.add_item('ice cream')
    expect{false_add}.to output("That item does not exist").to_stderr
  end

end
