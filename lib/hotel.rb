require_relative 'date_range'
require_relative 'reservation'
require_relative 'room'

require 'pry'

module Booking
  class Hotel
    
    attr_reader :reservations #, :start_date, :end_date , :new_reservation
    attr_accessor :rooms
    
    def initialize(num_of_rooms)
      if num_of_rooms == nil || num_of_rooms <= 0 
        raise ArgumentError, "Hotel must have a postive number of rooms greater than 0."
      end
      
      @rooms = make_rooms(num_of_rooms)
      @reservations = [] 
      #@new_reservation = new_reservation
      # @start_date = start_date
      # @end_date = end_date
    end
    
    def make_rooms(num)
      room_array = []
      i = 1
      if i < num + 1
        num.times do |room|
          room = Booking::Room.new(i)
          room_array << room
          i += 1
        end
      end
      #binding.pry
      return room_array
    end
    
    def make_reservation(start_date, end_date)
      
      if start_date > end_date
        raise ArgumentError, "End date of reservation must be after start date."
      else
        new_date_range = Booking::DateRange.new(start_date, end_date)
        
        room = rooms.sample
        
        new_reservation = Booking::Reservation.new(start_date, end_date, room)
      end
      
      reservations.push(new_reservation)
    end
    
    
    # def add_reservation(new_reservation)
    #   reservations.push(new_reservation) 
    # end
    
  end
end