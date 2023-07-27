# frozen_string_literal: true

module StackPrinter
  class Stack
    class << self
      def report(full_path = true)
        if full_path
          backtrace.map(&:to_s)
        else
          backtrace.select {|call| call.path.start_with?(ROOT_PATH) }.map(&:to_s)
        end
      end
  
      def find(&block)
        backtrace.find(&block)
      end

      private

      def backtrace
        stack = caller
        stack.shift
    
        stack.map do |call|
          Call.new(call)
        end
      end
    end
  end
end
