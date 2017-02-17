require_relative 'bike'

class DockingStation
attr_reader :num_bikes, :capacity, :broken_bikes
DEFAULT_CAPACITY = 20

  def initialize(capacity)
    #if no capacity, capacity = 20
    @capacity = capacity
    @num_bikes = []
    @broken_bikes = []
  end

  def release_bike
    fail "no bikes" if empty?
    @num_bikes.pop
  end

  def dock_bike(bike)
  #nb - Bike is created outside func.; Dock capcity = 1.
  #this method will send error if @bike already exists
  #@bike will only exist if a bike has already been docked
  #hence that bike will have become instance variable
    fail "I iz full" if full?
    puts "Bike work y/n?"
    answer = gets.chomp
    if answer == 'y'
    @num_bikes << bike
    else @broken_bikes << bike
  end
end

  private
  def full?
    (@num_bikes.length + broken_bike.length) >= DEFAULT_CAPACITY
  end

  def empty?
    @num_bikes.empty?
  end

  def broken_bikes_report
  p "We have the following broken bikes:"
  p @broken_bikes
end
end
