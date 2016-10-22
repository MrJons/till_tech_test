require_relative 'menu_parser'

class Menu

   def initialize(cafe)
     @info = MenuParser.new(cafe)
   end

   JSON_BLOCK = 0

   def print_menu
     menu_items.each do |item, price|
       puts "#{item}: £#{'%.2f' % price}"
     end
   end

   def menu_items
     @info.data_hash[JSON_BLOCK]['prices'][JSON_BLOCK]
   end

end
