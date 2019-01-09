require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize(bike = nil)
    @bike = bike
  end

  def release_bike
    fail "There are no bikes" if @bike == nil
    @bike
  end

  def dock(bike)
    fail "Already occupied" unless @bike == nil
    @bike = bike
  end

end
