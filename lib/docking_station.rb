require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize(bike = [])
    @bike = bike
  end

  def release_bike
    fail "There are no bikes" if @bike.empty?
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end
