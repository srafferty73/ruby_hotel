class Room

attr_reader :name, :capacity, :guests

  def initialize(name, capacity, guests)
    @name = name
    @capacity = capacity
    @guests = guests
  end

  def guest_count
    return @guests.length
  end
end
