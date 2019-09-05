module Booking
  class DateRange
    
    attr_reader :start_date, :end_date
    
    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
    end
    
    def total_nights
      nights = end_date - start_date
      
      if nights == 0
        return raise ArgumentError, "Must book the room for at least one night."
      else
        return nights
      end
    end 
    
  end
end