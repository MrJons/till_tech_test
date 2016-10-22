require 'rubygems'
require 'json'

class MenuParser

  def initialize(cafe_file)
    json = File.read(cafe_file)
    @data_hash = JSON.parse(json)
  end

  attr_reader :data_hash

end
