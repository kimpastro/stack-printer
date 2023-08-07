# frozen_string_literal: true

require "colorize"

module StackPrinter
  class Printer
    def self.exec(call)
      print call.path.blue
      print ":#{call.line} ".green
      puts "-> #{call.function_name}".light_blue
    end
  end
end
