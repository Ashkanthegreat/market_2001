class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map { |vendor| vendor.name }
  end

  def vendors_that_sell(item)
    @vendors.select { |vendor| vendor.check_stock(item) > 0 }
  end

  def total_inventory
    result = {}
    @vendors.each do |vendor|
      vendor.inventory.each do |item, quantity|
        result[item] = {quantity: 0, vendors: []} if result[item].nil?
        result[item][:quantity] += quantity
        result[item][:vendors] << vendor
      end
    end
    result
  end
end
