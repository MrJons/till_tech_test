require 'item.rb'

describe Item do

  before :each do
    @item = Item.new('Double Espresso', 2)
  end

  it 'stores ordered items as objects' do
    expect(@item.item).to eq('Double Espresso')
    expect(@item.quantity).to eq(2)
  end

end
