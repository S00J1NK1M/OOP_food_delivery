require_relative 'patient'

patient = Patient.new(name: "Soojin")
p patient
p "The patient name is #{patient.name}"

p patient.cured ? "The patient is cured" : "The patient is not cured yet"
p "The patient is #{patient.cured ? "cured" : "not cured yet"}"
