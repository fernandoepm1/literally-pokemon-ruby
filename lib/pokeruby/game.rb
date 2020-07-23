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
      choose_pokemons

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

  def is_valid?(option)
    option == '1' || option == '2'
  end

  def define_players
    if @mode == 'arcade'
      print "Player 1, what is your name? "
      players << LPR::Player.new(gets.chomp, :human, self)
      # Usar a Faker depois pra gerar um nome random
      players << LPR::Player.new('Zé', :cpu, self)
    elsif @mode == 'versus'
      print "Player 1, what is your name? "
      players << LPR::Player.new(gets.chomp, :human, self)

      print "Player 2, what is your name? "
      players << LPR::Player.new(gets.chomp, :human, self)
    end
  end

  # Deixar escolher de 3 formas
  # por nome, pelo número da pokedex e pegar um random
  def choose_pokemons
    players.each do |player|
      player.choose_pokemon
    end
  end

  def available_pokemons
    # o jogo deve saber quais os pokemons que tem
    # e não o player
  end
end
