require_relative 'date_range'
require_relative 'reservation'
require_relative 'room'

module Booking
  class Hotel
    
    attr_reader :reservations
    attr_accessor :rooms
    
    def initialize(num_of_rooms)
      if num_of_rooms == nil || num_of_rooms <= 0 
        raise ArgumentError, "Hotel must have a postive number of rooms greater than 0."
      end
      
      @rooms = make_rooms(num_of_rooms)
      @reservations = [] 
    end
    
    def make_rooms(num)
      array = Array.new(num)
      i = 0
      array.map! do |room|
        room = i
        room.to_s.to_sym
        i += 1
      end
      return array
    end
    
    def make_reservation
      new_reservation = Booking::Reservation.new()
      #@reservations.push(new_reservation)
    end
    
  end
end