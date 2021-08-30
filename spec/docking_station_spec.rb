require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to :bike }
    it 'dock a bike' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

    it 'check if bikes docks' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike). to eq bike
    end

    it 'releases.working bikes' do
        bike = Bike.new
        subject.dock(bike)
        subject.release_bike
        expect(bike).to be_working
    end
    
    describe '#dock' do
      it 'raises an error when the docking station is full' do
        subject.dock(Bike.new)
        expect { subject.dock Bike.new }. to raise_error 'Docking station full'
      end
      end

    describe '#release_bike' do
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
      it 'raises an error when the station dock is full' do
        
    end
end
end