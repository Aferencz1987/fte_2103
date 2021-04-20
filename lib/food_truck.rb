class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, amount)
    if inventory[item] == nil
      inventory[item] = amount
    else
      inventory[item] += amount
    end
  end

  def check_stock(item)
    if inventory[item] == nil
      inventory[item] = 0
    else
      inventory[item]
    end
  end

  # def potential_revenue
  #   @inventory.each do |item|
  #     inventory.items
  #   end
  # end
end
