class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks.push(truck)
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
       food_truck.inventory.keys.include?(item)
     end
  end

  # def total_inventory
  #   inventory_hash = Hash.new
  #   truck_inventory = food_trucks.map do |truck|
  #     truck.inventory
  #   end
  #   items = truck_inventory.flat_map do |items|
  #     items.keys.uniq
  #   end
  #
  #   items.each do |item|
  #     inventory_hash[item] = []
  #   end
  #   test = truck_inventory.group_by do |items|
  #     items.name
  #   end
  #   require "pry"; binding.pry
  # end
end
