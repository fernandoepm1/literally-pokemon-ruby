#!/usr/bin/env ruby

class LPR::Player
  attr_accessor :name
  attr_accessor :type

  def initialize(name, type)
    @name = name
    @type = type
  end
end
