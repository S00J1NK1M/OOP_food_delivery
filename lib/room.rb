class Room
  def initialize(attributes = {})
    @capacity = attributes[:capatcity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end
end
