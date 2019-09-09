require_relative 'test_helper'

describe "Room_Test" do 
  
  describe "Initialize" do
    
    it "Creates an instance of room" do 
      test_room = Booking::Room.new(5)
      expect(test_room).must_be_kind_of Booking::Room
    end
  end
end
