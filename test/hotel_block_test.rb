require_relative 'test_helper'

describe 'Hotel_Block' do 
  describe 'Initialize' do 
    
    it "creates an instance of Hotel_Block" do 
      start_date = Date.new(2019, 10, 10)
      end_date = Date.new(2019 10, 15)
      date_range = Booking::DateRange.new(start_date, end_date)
      total_nights = 5
      total_cost = 1000
      wedding_block = Booking::Hotel_Block.new(date_range, total_nights, total_cost, room)
      expect(wedding_block).must_be_kind_of Booking::Hotel_Block
    end
  end
end