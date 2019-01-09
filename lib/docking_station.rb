require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    fail "There are no bikes" if @docked_bikes.empty?
    @docked_bikes.pop
  end

  def dock(bike)
    fail "Station is full" if @docked_bikes.length >= 20
    @docked_bikes.push(bike)
  end

end
