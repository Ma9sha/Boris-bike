require_relative 'Bike'
class DockingStation
  #attr_reader :bike 
  def initialize (bike = "any value")
    @bike = bike
  end
  def release_bike
    puts @bike
    if @bike == "any value"
    raise
    else 
      return Bike.new
    end
  end
  def dock
    bike
  end
  def put_bike(bike)
    @bike = bike
  end
  def bike
    return @bike
  end
end
