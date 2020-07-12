#!/usr/bin/env ruby

require 'httparty'
require 'json'
require 'byebug'
require 'colorize'

module LPR
  VERSION = '1.0'.freeze
end

# Require libraries
load 'lib/pokeruby/battle.rb'
load 'lib/pokeruby/interface.rb'
load 'lib/pokeruby/move.rb'
load 'lib/pokeruby/player.rb'
load 'lib/pokeruby/pokemon.rb'
load 'lib/pokeruby/storage.rb'

# Start
load 'lib/pokeruby/game.rb'
LPR::Game.new.run
