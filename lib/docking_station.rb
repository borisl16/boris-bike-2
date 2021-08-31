require_relative 'bike'

class DockingStation
  attr_reader :bike
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= 20
    @bikes << bike
  end
end

=begin def release_bike
    @bike
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
  #def dock(bike)
    #fail 'Docking station full' if @bike
    #@bike = bike
  #end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def bike
    @bike
  end

=end