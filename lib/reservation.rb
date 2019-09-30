require_relative 'hotel'
require_relative 'date_range'
require 'pry'



module Booking
  class Reservation
    attr_reader :date_range, :total_nights, :room
    
    def initialize(date_range, total_nights, room)
      @date_range = date_range
      @room = room
      @total_nights = total_nights
    end
    
    def price
      return total_nights * 200
    end
  end
end