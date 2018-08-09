require_relative 'bike'

class DockingStation

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY

  end




  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end


  def dock(bike)
    fail "Docking Station Full!!!" if full?
    @bikes << bike
  end


  private

  def full?
    @bikes.size >= @capacity ? true : false
  end

  def empty?
    @bikes.size < 1 ? true : false
  end



end
