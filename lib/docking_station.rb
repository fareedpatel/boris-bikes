require_relative 'bike.rb'

class DockingStation
 DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    # @bikes.pop
    @bikes.each_with_index do |bike, i|
      return @bikes.pop unless working(i) == false
    end
  end

private

attr_reader :bikes

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

  def working(n)
    @bikes[n].working?
  end
end