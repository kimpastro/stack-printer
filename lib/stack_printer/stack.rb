# frozen_string_literal: true
require 'colorize'

module StackPrinter
  class Stack
    class << self
      def report(full_path = true)
        return backtrace.map(&:to_s) if full_path

        local_backtrace.map(&:to_s)
      end

      def pretty(full_path = true)
        payload = full_path ? backtrace : local_backtrace
        print_it(payload)
      end
  
      def find(&block)
        backtrace.find(&block)
      end

      private

      def local_backtrace
        backtrace.select { |call| call.path.start_with?(ROOT_PATH) }        
      end

      def backtrace
        stack = caller
        stack.shift
    
        stack.map do |call|
          Call.new(call)
        end
      end

      def print_it(trace)
        trace.each do |call|
          print call.path.blue
          print ":#{call.line} ".green
          puts "-> #{call.meth}".light_blue
        end
      end
    end
  end
end
