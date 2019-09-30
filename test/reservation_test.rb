require_relative 'test_helper'
require 'date'

def build_test_reservation
  start_date = Date.new(2019, 2, 15)
  end_date = Date.new(2019, 2, 20)
  res_date_range = Booking::DateRange.new(start_date, end_date)
  res_room = Booking::Room.new(5)
  res_total_nights = res_date_range.total_nights
  # res_total_cost = res_total_nights * 200
  reservation = Booking::Reservation.new(res_date_range, res_total_nights, res_room)
end

describe "Reservation Class" do
  describe "Initialize" do 
    
    it "is an instance of Reservation Class" do 
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation).must_be_kind_of Booking::Reservation
    end
    
    it "date_range is an instance of DateRange" do 
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation.date_range).must_be_kind_of Booking::DateRange
    end
    
    it "is assigned a room number" do
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation.room).must_be_kind_of Booking::Room
    end
  end
end