require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes
#  attr_reader :capacity

  def initialize #(capacity = 20)
    #@capacity = capacity
    @docked_bikes = []
  end

  def release_bike
    fail "There are no bikes" if @docked_bikes.empty?
    @docked_bikes.pop
  end

  def dock(bike)
    full? ? (fail "Station is full") : @docked_bikes.push(bike)
  end

  def full?
    @docked_bikes.count >= 20
  end

  def empty?
    @docked_bikes.empty?
  end
end



#  fail "Station is full" if ( @docked_bikes.full?)
#  @docked_bikes.push(bike)
