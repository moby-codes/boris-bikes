require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    # Bike.new
    fail "This bike does not exist" unless @bike
    @bike
    
  end

  def dock(bike)
    # do something here so that "bike" shows up in the attribute bike
    @bike = bike
  end

  # def bike
  #   @bike
  # end
end
