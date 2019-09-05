require_relative 'test_helper'
require 'date'

def build_test_hotel
  return Booking::Hotel.new(
  20
  )
end

def build_test_reservation
  start_date = Date.new(2019, 2, 15)
  end_date = Date.new(2019, 2, 20)
  return new_reservation = Booking::Reservation.new(start_date, end_date)
end

describe "Reservation Class" do
  
  describe "Initialize" do 
    # before do
    #   start_date = Date.new(2019, 2, 15)
    #   end_date = Date.new(2019, 2, 20)
    #   new_reservation = Booking::Reservation.new(start_date, end_date)
    # end
    
    it "is an instance of Reservation Class" do 
      the_grand_budapest_hotel = build_test_hotel
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation).must_be_kind_of Booking::Reservation
    end
    
    it "start and end date are an instance of Date" do 
      he_grand_budapest_hotel = build_test_hotel
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation.start_date).must_be_kind_of Date
      expect(wes_anderson_reservation.end_date).must_be_kind_of Date
    end
    
    it "is assigned a room number" do
      he_grand_budapest_hotel = build_test_hotel
      wes_anderson_reservation = build_test_reservation
      expect(wes_anderson_reservation.room_number).must_be_kind_of Symbol
    end
  end
end