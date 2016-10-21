require 'till.rb'

describe Till do

  it 'can select items with quantities' do
    subject.add_item('Cappucino', 1)
    expect(subject.order).to eq([['Cappucino', 1]])
  end


end
