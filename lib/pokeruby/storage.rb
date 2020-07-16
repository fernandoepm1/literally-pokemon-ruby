#!/usr/bin/env ruby

class LPR::Storage
  include HTTParty
  base_uri 'https://pokeapi.co/api/v2'

  class << self
    def pokemons(offset = '0', limit = '151')
      response = get("/pokemon?offset=#{offset}&limit=#{limit}")
      response['results']
    end

    def pokemon_names
      pokemons.collect { |poke| poke['name'] }
    end

    def fetch_pokemon(name)
      get("/pokemon/#{name.downcase}")
    end
  end
end
