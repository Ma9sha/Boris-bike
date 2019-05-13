require 'DockingStation'

describe DockingStation do
  #it 'release a bike' do
  describe 'release a bike' do
    #dockingstation = DockingStation.new

    #expect(dockingstation).to respond_to(:release_bike)
    it {is_expected.to respond_to(:release_bike)}
  end
end
