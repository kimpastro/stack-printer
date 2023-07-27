# frozen_string_literal: true

module StackPrinter
  class Call
    attr_reader :path, :line, :meth
    TRACE_REGEX = /(.*):(\d+):in `(.+)'/.freeze

    def initialize(trace)
      @path, @line, @meth = trace.match(TRACE_REGEX).captures
    end

    def to_s
      "%2.100s%10s%35.30s" % [path, line, meth]
    end
  end
end
