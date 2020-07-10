#!/usr/bin/env ruby

class LPR::Game
  attr_accessor :is_running
  attr_accessor :mode

  attr_reader :interface

  def initialize
    @interface = LPR::Interface.new
  end

  def run
    @is_running = true

    while @is_running
      @interface.draw_title
      set_mode

      @is_running = false
    end
  end

  private

  def set_mode
    while true
      @interface.ask_game_mode
      @mode = gets.chomp

      break if valid_mode?
      puts "Invalid option, try again.\n"
    end
  end

  def valid_mode?
    @mode == '1' || @mode == '2'
  end
end
