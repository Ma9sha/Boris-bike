require "Bike"

describe "Bike" do
  it "is it working?" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end
