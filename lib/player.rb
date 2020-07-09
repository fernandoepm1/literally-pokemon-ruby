#!/usr/bin/env ruby
# frozen_string_literal: true

module LPR
  class Player
    attr_accessor :name
    attr_accessor :type

    def initialize(name, type)
      @name = name
      @type = type
    end
  end
end
