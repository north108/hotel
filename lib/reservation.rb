require_relative 'hotel'
require 'pry'



module Booking
  class Reservation
    attr_reader :date_range, :total_cost, :total_nights, :room
    
    def initialize(date_range, total_nights, total_cost, room)
      @date_range = date_range
      @room = room
      @total_nights = total_nights
      @total_cost = total_cost
    end
    
    # def assign_room
    #   #binding.pry
    #   return Booking::Hotel.rooms.sample
    # end
    
    # def validate_date
    # end
    
    # def self.find(date)
    # end
    
  end
end