require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    # do something here so that "bike" shows up in the attribute bike
    @bike = bike
  end

  # def bike
  #   @bike
  # end
end
