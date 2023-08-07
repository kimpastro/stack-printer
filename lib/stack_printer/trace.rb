# frozen_literal_string: true
module StackPrinter
  class Trace
    def self.call(deep: true)
      stack = caller
      stack.delete_if { |stack| stack =~ /stack_printer/ }
      stack.delete_if { |stack| !stack.start_with?(ROOT_PATH) } unless deep

      stack
    end
  end
end

