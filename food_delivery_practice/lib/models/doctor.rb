# frozen_string_literal: true

# Real apps have several models
# Patient is one of our models
class Doctor
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
  end
end
