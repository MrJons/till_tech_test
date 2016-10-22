require 'menu.rb'

describe Menu do

  before :each do
    @menu = Menu.new('hipstercoffee.json')
  end

  @hipster_menu = "Cafe Latte: £4.75\nFlat White: £4.75\nCappucino: £3.85\n
  Single Espresso: £2.05\nDouble Espresso: £3....nTiramisu: £11.4\n
  Blueberry Muffin: £4.05\nChocolate Chip Muffin: £4.05\n
  Muffin Of The Day: £4.55\n"

  it 'Prints menu out to the console' do
    expect{@menu.print_menu}.to output(@hipster_menu).to_stdout
  end

end
