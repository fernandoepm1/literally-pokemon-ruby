#!/usr/bin/env ruby
# frozen_string_literal: true

module LPR
  class Player
    attr_accessor :name
    attr_accessor :type

    enum type: [:human, :cpu]

    def initialize(name)
      @name = name
    end
  end
end
