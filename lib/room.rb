module Booking
  class Room
    
    attr_reader :number, :cost
    
    def initialize (number, cost: 200)
      @number = number
      @cost = cost
      
    end
    
  end
end