#!/usr/bin/env ruby

module LPR
  class Interface
    def draw_title(title = '')
      title << "Poké Battle Simulator"
      puts title
    end

    def ask(question)
    end
  end
end
