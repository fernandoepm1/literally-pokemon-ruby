#!/usr/bin/env ruby

require 'json'
require 'byebug'
require 'colorize'

module LPR
  LPR_VERSION = '1.0'
end

# Require libraries
load 'lib/battle.rb'
load 'lib/interface.rb'
load 'lib/move.rb'
load 'lib/player.rb'
load 'lib/pokemon.rb'
load 'lib/storage.rb'

# Start
load 'lib/game.rb'
LPR::Game.new.run
