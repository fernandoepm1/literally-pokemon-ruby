#!/usr/bin/env ruby

class LPR::Storage
  class << self
    def get_pokemons
      JSON.parse(pokemon_file)
    end

    def pokemon_file
      File.read('assets/pokemons.json')
    end
  end
end
