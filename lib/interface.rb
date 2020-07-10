#!/usr/bin/env ruby

module LPR
  class Interface
    def draw_title(title = '')
      title << "Poké Battle Simulator"
      puts title
    end

    def ask_game_mode(question = '')
      question << "Currently available game modes\n\n"
      question << "(1) Singleplayer\t"
      question << "(2) Multiplayer\n"
      question << "Choose one: "
      print question
    end

    def ask(question)
    end
  end
end
