require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes
  self::DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @docked_bikes = []
  end

  def release_bike
    is_empty? ? (fail "There are no bikes") : @docked_bikes.pop
  end

  def dock(bike)
    full? ? (fail "Station is full") : @docked_bikes.push(bike)
  end

  private

  def full?
    @docked_bikes.count >= @capacity
  end

  def is_empty?
    @docked_bikes.empty?
  end

end



#  fail "Station is full" if ( @docked_bikes.full?)
#  @docked_bikes.push(bike)
