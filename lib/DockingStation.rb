require_relative 'Bike'
class DockingStation
  #attr_reader :bike
  def initialize #(bike = "any value")
    #@bike = bike
    @store = []
  end
  def release_bike
    puts @store
    if empty?
      raise
    else
      return Bike.new
    end
  end
  def dock
    bike
  end
  def put_bike(bike)
    if full?
      raise
    else
    @store.push(bike)
    end
  end
  def store
    return @store
  end

private
  def full?
    @store.length >= 20
  end

  def empty?
    @store.length < 1
  end
end
