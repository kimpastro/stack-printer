# frozen_string_literal: true

require "colorize"
require "stack_printer/version"
require "stack_printer/call"

module StackPrinter
  ROOT_PATH = File.expand_path("../", __dir__)

  def report(args = {})
    @options = default_options.merge(args)

    if @options[:print]
      print_it
      return
    end

    if @options[:as_object]
      backtrace
    else
      backtrace.map(&:to_s)
    end
  end
  module_fuction :report

  private

  def default_options
    {
      deep: true,
      print: false,
      as_object: false
    }
  end

  def backtrace
    parsed_caller.map { |call| Call.new(call) }
  end

  def parsed_caller
    stack = caller
    stack.delete_if { |stack| stack =~ /stack_printer/ }
    stack.delete_if { |stack| !stack.start_with?(ROOT_PATH) } unless @options[:deep]

    stack
  end

  def print_it
    backtrace.each do |call|
      print call.path.blue
      print ":#{call.line} ".green
      puts "-> #{call.meth}".light_blue
    end
  end
end

require "stack_printer/object"
