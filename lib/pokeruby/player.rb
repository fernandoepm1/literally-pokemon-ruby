#!/usr/bin/env ruby

class LPR::Player
  attr_accessor :name
  attr_accessor :type
  attr_accessor :pokemon
  attr_accessor :game

  def initialize(name, type, game)
    @name = name
    @type = type
    @game = game
  end

  def choose_pokemon
    return random_pokemon if @type == :cpu

    @game.interface.ask_for_pokemon

    while true
      poke = gets.chomp.downcase

      break if pokemon_exists?(poke)
      print "That's not a valid pokémon, try again: "
    end

    pokemon = LPR::Pokemon.new(poke)
  end

  def random_pokemon
    name    = @game.storage.class.pokemon_names.sample
    pokemon = LPR::Pokemon.new(name)
  end

  private

  def pokemon_exists?(poke)
    @game.storage.class.pokemon_names.include?(poke)
  end
end
