require_relative 'hotel'
require 'pry'

module Booking
  class Reservation
    attr_reader :start_date, :end_date, :room_number
    
    def initialize(start_date, end_date, room)
      @start_date = start_date
      @end_date = end_date
      @room = room
    end
    
    # def assign_room
    #   #binding.pry
    #   return Booking::Hotel.rooms.sample
    # end
    
    def validate_date
    end
    
    def self.find(date)
    end
    
  end
end