require 'rspec'
require 'parcel'

describe Parcel do
  it 'is initialized with 4 arguments (weight, width, height and length)' do
    test_parcel = Parcel.new(5, 5, 5, 5)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'should allow you to call the volume of a parcel' do
    test_parcel = Parcel.new(5, 5, 5, 5)
    test_parcel.volume.should eq 125
  end
  it 'should calculate shipping cost' do
    test_parcel = Parcel.new(1, 12, 24, 5)
    test_parcel.shipping_cost.should eq 15.4
  end
end
