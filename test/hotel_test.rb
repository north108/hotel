require_relative 'test_helper'

def build_test_hotel
  return Booking::Hotel.new(
  20
  )
end

describe "Hotel Class" do
  describe "Initializer" do
    
    it "is an instance of Hotel Class" do
      The_Grand_Budapest_Hotel = build_test_hotel
      expect(The_Grand_Budapest_Hotel).must_be_kind_of Booking::Hotel
      
    end
  end
end