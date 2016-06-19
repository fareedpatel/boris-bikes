require "docking_station"

describe DockingStation  do
  describe 'initialization' do
    subject { DockingStation.new }
    let (:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end
	describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  describe 'dock' do
    it 'raises an error when full' do
        subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
  describe '#release_bike' do 
    it 'raises an error when there are no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  describe 'does not release broken bikes' do
      it 'returns error when bike broken' do
        bike = Bike.new
        bike.report_broken
        subject.dock bike
        expect { 21.times{subject.release_bike}}.to raise_error 'No bikes available'
      end
  end
end