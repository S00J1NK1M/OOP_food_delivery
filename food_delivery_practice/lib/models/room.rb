# frozen_string_literal: true

# Room is one of our models
class Room
  attr_accessor :id
  
  def initialize(attributes = {})
    @capacity = attributes[:capatcity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise StandardError, 'Room is full!' if full?

    patient.room = self
    @patients << patient
  end
end
