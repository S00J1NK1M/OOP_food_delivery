# frozen_string_literal: true

# Real apps have several models
# Patient is one of our models
class Patient
  attr_reader :name, :cured
  attr_accessor :room

  def initialize(attributes = {})
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @room = attributes[:room]
  end

  def cure!
    @cured = true
  end
end
