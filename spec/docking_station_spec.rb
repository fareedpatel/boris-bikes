require 'docking_station'

	describe DockingStation do
	
		it { is_expected.to respond_to :release_bike }

		it 'releases working bikes' do
		bike = subject.release_bike
		expect(bike).to be_working
		end

		docking = DockingStation.new
		bike = Bike.new

		it 'responds to dock' do 
		expect(docking.dock_bike(bike))
		end

		it 'sees a docked bike' do
		expect(docking.view_bike)
		end
	end



# require "bike"
# describe Bike do
# 	it 'gets bike' do
# 	bike = Bike.new
# 	bike.working? 'gets bike'
# 	ene
