require "docking_station"

describe DockingStation  do

	 
	# it { is_expected.to respond_to :release_bike }
	describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
  end
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^
 # let's upgrade our syntax, too:
  # use a '#' before a method name
  # to imply that it is an instance
  # method. Also look: nested describes!
	# it 'releases working bikes' do
	# 	bike = subject.release_bike
	# 	expect(bike).to be_working
	# end
		# use a '#' before a method
	# to imply that it is an instance method
	# Also look nested scribes!
	describe '#release_bike' do 
		it 'raises an error when there are no bikes available' do
		# it 'releases a bike' do
		expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end

	it 'docks something' do
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end

	it 'returns docked bike' do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bike).to eq bike
	end




		 it { is_expected.to respond_to(:dock).with(1).argument }

end




	



