
class Bike

attr_reader :working

  def initialize
    @working = true
  end

  def working?
    @working
  end

  # def condition
  #   puts "is the bike working or broken?"
  #   answer = gets.chomp
  #   update_bike_if_broken if answer == "broken"
  # end

  def report_broken
    @working = false
  end
end
