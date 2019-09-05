require_relative 'test_helper'
require 'pry'

describe "DateRange" do
  describe "Initializer" do
    
    before do
      start_date = Date.new(2016, 10, 21)
      end_date = Date.new(2016, 10, 30)
      @test_date_range = Booking::DateRange.new(start_date, end_date)
    end
    
    it "creates and instance of DateRange" do
      expect(@test_date_range).must_be_kind_of Booking::DateRange
    end
    
    it "is set up for specific attributes and data types" do
      [:start_date, :end_date].each do |attribute|
        expect(@test_date_range).must_respond_to attribute
      end
      
      expect(@test_date_range.start_date).must_be_kind_of Date
      expect(@test_date_range.end_date).must_be_kind_of Date
      
    end
    
  end 
  
  describe "Total_Nights" do
    
    it "calculates the total amount of nights for a reservation" do
      start_date = Date.new(2016, 10, 21)
      end_date = Date.new(2016, 10, 30)
      @test_date_range = Booking::DateRange.new(start_date, end_date)
      expect(@test_date_range.total_nights).must_equal 9
    end
    
    it "raises an ArgumentError if end and start date are the same" do
      start_date = Date.new(2016, 10, 21)
      end_date = Date.new(2016, 10, 21)
      @test_date_range = Booking::DateRange.new(start_date, end_date)
      
      expect{@test_date_range.total_nights}.must_raise ArgumentError
      
    end
  end
end