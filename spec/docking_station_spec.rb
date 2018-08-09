require 'docking_station'


describe DockingStation do

    let(:mockBike) { double :bike, :bike => "bike" }

    # Nested describe block focused on the release bike method
    describe '#release_bike' do

      it '.release_bike - does it create a bike object' do
        subject.dock(mockBike)
        expect(subject.release_bike).to eq mockBike
      end

      it '.release_bike - error when no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

    #Nested describe block focused on the dock method
    describe '#dock(bike)' do
      it ".dock(bike) returns a bike object in an array" do
        expect(subject.dock(mockBike)).to eq([mockBike])
      end

      it '.dock(bike) - error when docking station is full' do
        expect { 21.times {subject.dock(mockBike)} }.to raise_error 'Docking Station Full!!!'
      end
    end

    #Nested describe block for the .bike instance variable(attr_reader)
    describe '#bike (attr_reader for instance var)' do
      it ".bikes - returns the instance variable @bikes" do
        subject.dock(mockBike)
        expect(subject.bikes).to eq([mockBike])
      end
    end
end
