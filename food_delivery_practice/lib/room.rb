class Room
  def initialize(attributes = {})
    @capacity = attributes[:capatcity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise StandardError, 'Room is full!' if full?
    patient.room = self # self = the current room instance
    @patients << patient
  end
end
