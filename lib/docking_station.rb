require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "This bike does not exist" if @bikes == []
    @bikes.first
  end

  def dock(bike)
    fail "This dock is full" if @bikes.count == 20
    @bikes << bike
  end
end
