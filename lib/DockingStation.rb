require_relative 'Bike'
class DockingStation
  #attr_reader :bike 
  def initialize #(bike = "any value")
    #@bike = bike
    @store = []
  end
  def release_bike
    puts @store
    if @store.length < 1
    raise
    else 
      return Bike.new
    end
  end
  def dock
    bike
  end
  def put_bike(bike)
    if @store.length >= 1
      raise
    else
    @store.push(bike)
    end
  end
  def store
    return @store
  end
end
