require_relative 'bike'
class DockingStation
DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end
  def release_bike
     fail "No bikes available" if empty?
     @bikes.pop
  end
  def dock(bike)
    # use an instance variable to store the bike
    # in the 'state' of this insthttps://github.com/makersacademy/course/blob/master/boris_bikes/walkthroughs/15.mdance
   	fail 'Docking station full' if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end