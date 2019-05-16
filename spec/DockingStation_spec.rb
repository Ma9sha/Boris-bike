require 'DockingStation'

describe DockingStation do
  describe 'release a bike' do
    it do
    bike = Bike.new
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to(:release_bike)
    #it {is_expected.to respond_to(:release_bike)}
end
end
  describe 'gets a bikes working' do
    it do
    bike = Bike.new
    #docking_station = DockingStation.new
    #docking_station.release_bike
    expect(bike.working?).to eq(true)
    end
  end

  describe "dock a bike" do
    it {
      bike = Bike.new
      docking_station = DockingStation.new

      expect(docking_station).to respond_to(:dock)

    }
  end
  # describe 'see the bike docked' do
  #   it {
  #     bike = Bike.new
  #     docking_station = DockingStation.new

  #     expect(docking_station.dock).to eq(bike)
  #   }
  # end
  describe "see the bike docked" do
    it {
      #arrange
      bike = Bike.new
      docking_station = DockingStation.new
      #act
      docking_station.put_bike(bike)
      expect(docking_station.store.length).to eq(1)
    }
  end
  describe "to throw an error when a bike is not found" do
    it {
    bk = Bike.new
    dk_st = DockingStation.new
    expect {dk_st.release_bike}.to raise_error(RuntimeError)
  }
  end
  describe "to throw an error when a docking station is full" do
    it {
    bk = Bike.new
    dk_st = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { dk_st.put_bike(bk) }
    expect {dk_st.put_bike(bk)}.to raise_error(RuntimeError)
  }
end
end
