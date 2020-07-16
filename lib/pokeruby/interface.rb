#!/usr/bin/env ruby

class LPR::Interface
  def draw_title(title = '')
    title << "Poké Battle Simulator"
    puts title
  end

  def ask_game_mode(question = '')
    question << "Currently available game modes\n\n"
    question << "(1) Arcade Mode - "
    question << "Fight waves of pokémons until you faint.\n"
    question << "(2) Versus Mode - "
    question << "2 players battling, alternating turns.\n\n"
    question << "Choose one: "
    print question
  end

  def ask_player_name(player, question = '')
    question << "#{player}, what is your name? "
    print question
  end

  def ask_for_pokemon(question = '')
    question << "Choose a pokémon: "
    print question
  end
end
