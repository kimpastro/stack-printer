module StackPrinter
  class Stack
    include Enumerable

    attr_reader :calls

    def initialize(calls: [])
      @calls = calls
    end

    def each
      @calls.each { |call| yield Call.new(call) }
    end
  end
end
