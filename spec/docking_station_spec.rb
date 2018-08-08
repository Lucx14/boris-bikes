require 'docking_station'


describe DockingStation do
    it { is_expected.to respond_to :release_bike }



    it "do we get a bike instance from release_bike and is bike.working? true" do
      docking_station = DockingStation.new
      bike = docking_station.release_bike
      expect(bike.working?).to eq(true)
    end

    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end


    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
    end




end
