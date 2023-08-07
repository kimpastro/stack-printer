# frozen_string_literal: true

require "stack_printer/version"
require "stack_printer/constants"
require "stack_printer/call"
require "stack_printer/printer"
require "stack_printer/stack"
require "stack_printer/trace"

module StackPrinter
  def self.fink
    call_list.each { |call| Printer.exec(call) }

    nil
  end

  private

  def self.call_list
    Stack.new(calls: Trace.call)
  end
end
