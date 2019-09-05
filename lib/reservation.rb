require_relative 'hotel'
require 'pry'



module Booking
  class Reservation
    attr_reader :date_range, :room
    
    def initialize(date_range, room)
      @date_range = date_range
      @room = room
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