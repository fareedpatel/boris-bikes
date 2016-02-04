require_relative 'bike'
#require needs you to have a full path name,
#relative allows you to do a 
class DockingStation

	attr_reader :bike

  def release_bike
  #   fail "No bikes available" unless @bike
 	# @bike
  Bike.new
  end

   def dock(bike)
    # use an instance variable to store the bike
    # in the 'state' of this instance
   	@bike = bike
  end
# Let's add to our #bike method to return the
# Bike we docked
  # def bike
  #  @bike
  #  end
# instead we use an attribute reader

end