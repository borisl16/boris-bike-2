require_relative 'bike' 

class DockingStation
  attr_reader :bike

  def initialize
    @bike = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bike.pop
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Docking station full' unless @bike
    @bike = bike
  end

  def dock(bike)
    fail 'Docking station full' if @bike.count >= 20
    @bike << bike
  end

end
