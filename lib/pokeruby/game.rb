#!/usr/bin/env ruby

class LPR::Game
  attr_reader :interface
  attr_reader :storage

  attr_accessor :is_running
  attr_accessor :mode
  attr_accessor :players

  def initialize
    @interface = LPR::Interface.new
    @storage   = LPR::Storage.new
    @players   = []
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
      print "Invalid option, try again: " # interface?
    end

    @mode = (option == '1' ? 'arcade' : 'versus')
  end

  def define_players
    if @mode == 'arcade'
      print "Player 1, what is your name? "
      players[:player1] = LPR::Player.new(gets.chomp, :human)
      # Usar a Faker depois pra gerar um nome random
      players[:player2] = LPR::Player.new('Zé', :cpu)
    elsif @mode == 'versus'
      print "Player 1, what is your name? "
      players[:player1] = LPR::Player.new(gets.chomp, :human)

      print "Player 2, what is your name? "
      players[:player2] = LPR::Player.new(gets.chomp, :human)
    end
  end

  def is_valid?(option)
    option == '1' || option == '2'
  end
end
