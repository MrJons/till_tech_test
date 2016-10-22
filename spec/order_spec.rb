require 'order.rb'

describe Order do

  before :each do
    @order = Order.new
    @order.contents << ['Cappucino', 1]
  end

  it 'Can store ordered items' do
    expect(@order.contents).to eq([['Cappucino', 1]])
  end

  it 'can wipe ordered histoy for next customer'do
    @order.clear
    expect(@order.contents).to eq([])
  end

end
