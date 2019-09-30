require_relative 'date_range'
require_relative 'reservation'
require_relative 'room'

require 'pry'

module Booking
  class Hotel
    
    attr_reader :reservations, :unavailable_rooms 
    attr_accessor :rooms
    
    def initialize(num_of_rooms)
      if num_of_rooms == nil || num_of_rooms <= 0 
        raise ArgumentError, "Hotel must have a postive number of rooms greater than 0."
      end
      
      @rooms = make_rooms(num_of_rooms)
      @reservations = [] 
      @unavailable_rooms = []
    end
    
    def make_rooms(num)
      room_array = []
      i = 1
      while i < num + 1 
        room = Booking::Room.new(i)
        room_array << room
        i += 1
      end
      return room_array
    end
    
    def make_reservation(start_date, end_date)
      available_rooms_list = available_rooms(start_date,end_date)
      new_date_range = Booking::DateRange.new(start_date, end_date)
      new_total_nights = new_date_range.total_nights
      # new_cost = new_total_nights * 200
      room = available_rooms_list.sample
      new_reservation = Booking::Reservation.new(new_date_range, new_total_nights, room)
      
      reservations.push(new_reservation)
    end
    
    def find_reservation(start_date, end_date)
      reservation_array = []
      reservations.each do |reservation|
        if reservation.date_range.start_date == start_date && reservation.date_range.end_date == end_date
          reservation_array << reservation
        end
      end
      return reservation_array
    end
    
    def available_rooms(start_date, end_date)
      if start_date > end_date
        raise ArgumentError, "End date of reservation must be after start date."
      else
        reservations.each do |reservation|
          if reservation.date_range.end_date > start_date || reservation.date_range.start_date < end_date
            if !unavailable_rooms.include?(reservation.room.number)
              unavailable_rooms << reservation.room.number
            end
          end
        end
        
        a_rooms = rooms 
        i = 0
        a_rooms.each do |room|
          if unavailable_rooms.include?(room.number)
            a_rooms.delete(room)
          else
            i += 1
          end
        end
        
        if a_rooms == []
          raise StandardError, "There are no rooms available for that date range."
        else
          return a_rooms
        end
      end
    end
    
  end
end