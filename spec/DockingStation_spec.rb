require 'DockingStation'

describe DockingStation do
  describe 'release a bike' do
    it do
    bike = Bike.new
    dockingstation = DockingStation.new(bike)
    expect(dockingstation).to respond_to(:release_bike)
    #it {is_expected.to respond_to(:release_bike)}
end
end
  describe 'gets a bike' do
    it do
    bike = Bike.new
    docking_station = DockingStation.new(bike)
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
    end
  end

  describe "dock a bike" do
    it {
      bike = Bike.new
      docking_station = DockingStation.new(bike)

      expect(docking_station).to respond_to(:dock)

    }
  end
  describe 'see the bike docked' do
    it {
      bike = Bike.new
      docking_station = DockingStation.new(bike)
      
      expect(docking_station.dock).to eq(bike)
    }
  end
  describe "see the bike docked" do
    it {
      #arrange
      bike = Bike.new
      docking_station = DockingStation.new
      #act
      docking_station.put_bike(bike)
      expect(docking_station.bike).to eq(bike)
    }
  end
  describe "to throw an error when a bike is not found" do
    it {
    bk = Bike.new
    dk_st = DockingStation.new
    expect {dk_st.release_bike}.to raise_error(RuntimeError)
  }
  end
end
