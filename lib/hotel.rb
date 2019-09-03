require_relative 'date_range'
require_relative 'reservation'
require_relative 'room'

module Booking
  class Hotel
    
    def initialize(num_of_rooms)
      # @start_date = start_date
      # @end_date = end_date
      @rooms = make_rooms(num_of_rooms)
      reservations = []
      
    end
    
    def make_rooms(num)
      array = Array.new(num)
      i = 1
      array.map! do |room|
        room = i
        room.to_s.to_sym
        i += 1
      end
      return array
    end
    
    def make_reservation
    end
    
  end
end