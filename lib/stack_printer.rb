# frozen_string_literal: true

require "stack_printer/version"
require "stack_printer/call"
require "stack_printer/stack"

module StackPrinter
  ROOT_PATH = File.expand_path("../", __dir__)

  class << self
    def full_report
      Stack.report
    end

    def local_report
      Stack.report(false)
    end
  end
end
