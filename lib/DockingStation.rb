require_relative 'Bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  #attr_reader :bike
  def initialize (num=DEFAULT_CAPACITY)
    #@bike = bike
    @store = []
    @num = num

  end
  def release_bike
    puts @store
    if empty? || @store.last == "broken"
      raise
    else
      return @store.pop
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
    @store.length >= @num
  end

  def empty?
    @store.length < 1
  end
end
