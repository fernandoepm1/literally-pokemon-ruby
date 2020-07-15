#!/usr/bin/env ruby

class LPR::Game
  attr_accessor :is_running
  attr_accessor :mode
  attr_accessor :players

  attr_reader :interface

  def initialize
    @interface = LPR::Interface.new
    @players = {}
  end

  def run
    @is_running = true

    while @is_running
      @interface.draw_title
      @interface.ask_game_mode

      set_mode
      define_players

      @is_running = false
    end
  end

  private

  def set_mode
    while true
      option = gets.chomp

      break if is_valid?(option)
      print "Invalid option, try again: "
    end

    @mode = (option == '1' ? 'arcade' : 'versus')
  end

  def define_players
    # Create player objects
  end

  def is_valid?(option)
    option == '1' || option == '2'
  end
end
