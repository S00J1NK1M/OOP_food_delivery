# frozen_string_literal: true

require_relative 'patient'
require_relative 'room'

patient = Patient.new(name: 'Soojin')
p patient.room
p "The patient name is #{patient.name}"

p patient.cured ? 'The patient is cured' : 'The patient is not cured yet'
p "The patient is #{patient.cured} ? 'cured' : 'not cured yet'"
