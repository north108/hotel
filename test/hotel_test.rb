require_relative 'test_helper'

def build_test_hotel
  return Booking::Hotel.new(
    20
  )
end

describe "Hotel Class" do
  
  describe "Initializer" do
    
    it "is set up for specific attributes and data types" do
      the_grand_budapest_hotel = build_test_hotel
      [:rooms, :reservations].each do |attribute|
        expect(the_grand_budapest_hotel).must_respond_to attribute
      end
      
      expect(the_grand_budapest_hotel.rooms).must_be_kind_of Array
      expect(the_grand_budapest_hotel.reservations).must_be_kind_of Array
    end
    
    it "is an instance of Hotel Class" do
      the_grand_budapest_hotel = build_test_hotel
      expect(the_grand_budapest_hotel).must_be_kind_of Booking::Hotel 
    end
    
    it "@rooms is the correct length" do
      the_grand_budapest_hotel = build_test_hotel
      expect(the_grand_budapest_hotel.rooms.length).must_equal 20
    end
    
    it "must be initiated with a a postive amount of rooms greater than 0" do
      expect{Booking::Hotel.new(0)}.must_raise ArgumentError
      expect{Booking::Hotel.new(nil)}.must_raise ArgumentError
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
    
    it "Adds new reservation to all of Hotel's reservations list" do
      expect(@the_grand_budapest_hotel.reservations.length).must_equal 1
    end
  end
  
  describe "Find_Reservation" do
    before do
      @the_grand_budapest_hotel = build_test_hotel
      
      @res_1_start_date = Date.new(2019, 2, 15)
      @res_1_end_date = Date.new(2019, 2, 20)
      @res_1 = @the_grand_budapest_hotel.make_reservation(@res_1_start_date, @res_1_end_date)
      
      @res_2_start_date = Date.new(2019, 2, 15)
      @res_2_end_date = Date.new(2019, 2, 20)
      @res_2 = @the_grand_budapest_hotel.make_reservation(@res_2_start_date, @res_2_end_date)
      
      @res_3_start_date = Date.new(2019, 6, 10)
      @res_3_end_date = Date.new(2019, 6, 23)
      @res_3 = @the_grand_budapest_hotel.make_reservation(@res_3_start_date, @res_3_end_date)
    end 
    
    it "returns an array of reservation objects" do 
      expect(@the_grand_budapest_hotel.find_reservation(@res_1_start_date, @res_1_end_date)).must_be_kind_of Array
    end 
    
    it "returns an array of the correct length" do 
      array = @the_grand_budapest_hotel.find_reservation(@res_1_start_date, @res_1_end_date) 
      expect(array.length).must_equal 2
    end
  end
  
  describe "Available_Rooms" do 
    
    it "raises an argument if end_date is before start_date" do
      the_grand_budapest_hotel = build_test_hotel
      start_date = Date.new(2019, 2, 20)
      end_date = Date.new(2019, 2, 15)
      
      expect{the_grand_budapest_hotel.available_rooms(start_date, end_date)}.must_raise ArgumentError
    end
    
    it "will return an array of rooms that are available given the date range" do 
      @the_grand_budapest_hotel = build_test_hotel
      start_date = Date.new(2019, 10, 10)
      end_date = Date.new(2019, 10, 24)
      expect(@the_grand_budapest_hotel.available_rooms(start_date, end_date)).must_be_kind_of Array
    end
    
    it "raises an exception if there are no rooms available" do 
      @the_grand_budapest_hotel = build_test_hotel
      20.times do 
        res_start_date = Date.new(2019, 2, 15)
        res_end_date = Date.new(2019, 2, 20)
        res = @the_grand_budapest_hotel.make_reservation(res_start_date, res_end_date)
      end
      res_21_start_date =Date.new(2019, 2, 15)
      res_21_end_date = Date.new(2019, 2, 20)
      expect{@the_grand_budapest_hotel.available_rooms(res_21_start_date, res_21_end_date)}.must_raise StandardError
    end
  end
end



