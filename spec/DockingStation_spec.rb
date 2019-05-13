require 'DockingStation'

describe DockingStation do
  #it 'release a bike' do
  describe 'release a bike' do
    #dockingstation = DockingStation.new

    #expect(dockingstation).to respond_to(:release_bike)
    it {is_expected.to respond_to(:release_bike)}
end
  describe 'gets a bike' do
    it do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
    end
  end
end
