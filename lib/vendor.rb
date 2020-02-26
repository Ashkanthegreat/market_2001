class Vendor

  attr_reader :name
  attr_accessor :inventory


  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory.length
  end

  def stock(item, quantity)
    @inventory.merge(item: quantity)

  end

end
