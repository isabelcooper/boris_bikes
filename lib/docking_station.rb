require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
=begin
  def initialize
    @bike = bike
  end
=end
  attr_reader :bike
end
