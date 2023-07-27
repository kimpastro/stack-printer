# frozen_string_literal: true

RSpec.describe StackPrinter::Call do
  let(:trace) { "/Users/ruby/irb/workspace.rb:119:in `eval'" }
  
  before(:each) do
    @subject = described_class.new(trace)
  end

  context "instance methods" do
    it "#to_s" do
      expect(@subject.to_s).to include("/Users/ruby/irb/workspace.rb")
    end
  end
end
