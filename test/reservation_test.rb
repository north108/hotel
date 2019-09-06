require_relative 'test_helper'
require 'date'

# def build_test_hotel
#   return Booking::Hotel.new(
#   20
#   )
# end

def build_test_reservation
  # the_grand_budapest_hotel = Booking::Hotel.new(20)
  # # room_array = the_grand_budapest_hotel.make_rooms(20)
  # start_date = Date.new(2019, 2, 15)
  # end_date = Date.new(2019, 2, 20)
  # date_range = Booking::DateRange.new(start_date, end_date)
  # return new_reservation = Booking::Reservation.new(date_range, room)
  
  # the_grand_budapest_hotel = Booking::Hotel.new(20)
  # start_date = Date.new(2019, 2, 15)
  # end_date = Date.new(2019, 2, 20)
  # the_grand_budapest_hotel.make_reservation(start_date, end_date)
  
  start_date = Date.new(2019, 2, 15)
  end_date = Date.new(2019, 2, 20)
  res_date_range = Booking::DateRange.new(start_date, end_date)
  res_room = Booking::Room.new(5)
  res_total_nights = res_date_range.total_nights
  res_total_cost = res_total_nights * 200
  reservation = Booking::Reservation.new(res_date_range, res_total_nights, res_total_cost, res_room)
  
  # the_grand_budapest_hotel = Booking::Hotel.new(20)
  # start_date = Date.new(2019, 2, 15)
  # end_date = Date.new(2019, 2, 20)
  # reservation = the_grand_budapest_hotel.make_reservation(start_date, end_date)
  
end

describe "Reservation Class" do
  
  describe "Initialize" do 
    # before do
    #   start_date = Date.new(2019, 2, 15)
    #   end_date = Date.new(2019, 2, 20)
    #   new_reservation = Booking::Reservation.new(start_date, end_date)
    # end
    
    it "is an instance of Reservation Class" do 
      #  the_grand_budapest_hotel = build_test_hotel
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation).must_be_kind_of Booking::Reservation
    end
    
    it "date_range is an instance of DateRange" do 
      # the_grand_budapest_hotel = build_test_hotel
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation.date_range).must_be_kind_of Booking::DateRange
    end
    
    it "is assigned a room number" do
      # the_grand_budapest_hotel = build_test_hotel
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation.room).must_be_kind_of Booking::Room
    end
  end
end