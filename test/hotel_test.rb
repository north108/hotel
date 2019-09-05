require_relative 'test_helper'

def build_test_hotel
  return Booking::Hotel.new(
  20
  )
end

describe "Hotel Class" do
  describe "Initializer" do
    
    it "is an instance of Hotel Class" do
      the_grand_budapest_hotel = build_test_hotel
      expect(the_grand_budapest_hotel).must_be_kind_of Booking::Hotel 
    end
    
    it "@rooms is an array" do
      the_grand_budapest_hotel = build_test_hotel
      expect(the_grand_budapest_hotel.rooms).must_be_kind_of Array
    end
    
    it "@rooms is the correct length" do
      the_grand_budapest_hotel = build_test_hotel
      expect(the_grand_budapest_hotel.rooms.length).must_equal 20
    end
    
    it "must be initiated with a a postive amount of rooms greater than 0" do
      expect{Booking::Hotel.new(0)}.must_raise ArgumentError
      expect{Booking::Hotel.new(nil)}.must_raise ArgumentError
    end
    
    it "@reservations is an array" do
      the_grand_budapest_hotel = build_test_hotel
      expect(the_grand_budapest_hotel.reservations).must_be_kind_of Array
    end
    
    
  end
  
  describe "Make_Rooms" do
    it "creates an instance of room" do
      the_grand_budapest_hotel = build_test_hotel
      array = the_grand_budapest_hotel.make_rooms(20)
      array.each do |room|
        expect(room).must_be_kind_of Booking::Room
      end
    end
  end
  
  
  describe "Make_Reservation" do 
    
    
    
    before do
      @the_grand_budapest_hotel = build_test_hotel
      start_date = Date.new(2019, 2, 15)
      end_date = Date.new(2019, 2, 20)
      @new_reservation = @the_grand_budapest_hotel.make_reservation(start_date, end_date)
    end
    
    # it "creates an instance of a room" do 
    #   expect(@new_reservation.new_reservation).must_be_kind_of Booking::Reservation
    # end
    
    
    
    it "Adds new reservation to all of Hotel's reservations list" do
      expect(@the_grand_budapest_hotel.reservations.length).must_equal 1
    end
    
    it "raises an argument if end_date is before start_date" do
      the_grand_budapest_hotel = build_test_hotel
      start_date = Date.new(2019, 2, 20)
      end_date = Date.new(2019, 2, 15)
      new_reservation = the_grand_budapest_hotel.make_reservation(start_date, end_date)
      
      expect{new_reservation}.must_raise ArgumentError
    end
  end
  
end



