class PassengerCarriage < Carriage
  def initialize(total_seats)
    @type = 'passenger'
    @total_seats = total_seats
    validate!
    @busy_seats = 0
  end

  def take_place
    @busy_seats += 1 if @total_seats > @busy_seats
  end

  attr_reader :busy_seats

  def free_seats
    @total_seats - @busy_seats
  end
end
