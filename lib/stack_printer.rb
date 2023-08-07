# frozen_string_literal: true

require "stack_printer/version"
require "stack_printer/constants"
require "stack_printer/call"
require "stack_printer/printer"
require "stack_printer/stack"
require "stack_printer/trace"

module StackPrinter
  def self.fink(deep = true)
    Stack
      .new(calls: Trace.call(deep: deep))
      .each do |call|
        Printer.exec(call)
      end

    nil
  end
end
