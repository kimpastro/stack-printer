# frozen_string_literal: true

require "stack_printer/version"
require "stack_printer/call"
require "stack_printer/stack"

module StackPrinter
  ROOT_PATH = File.expand_path("../", __dir__)

  class << self
    def report(full_path = true)
      Stack.report(full_path)
    end

    def pretty_report(full_path = true)
      Stack.pretty(full_path)
    end
  end
end

require "stack_printer/object"
