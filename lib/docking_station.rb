require_relative 'bike'

class DockingStation

  def initialize
    @num_bikes = 0
  end

  def release_bike
    fail "no bikes" unless @bike
    @bike
  end

  def dock_bike(bike1)
  #nb - Bike is created outside func.; Dock capcity = 1.
  #this method will send error if @bike already exists
  #@bike will only exist if a bike has already been docked
  #hence that bike will have become instance variable
    fail "I iz full" if @num_bikes > 20
    @num_bikes += 1
    @bike = bike1
  end

  attr_reader :bike
  attr_reader :num_bikes

  # def num_bikes
  #   @num_bikes
  # end

end
