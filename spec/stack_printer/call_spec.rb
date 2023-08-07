# frozen_string_literal: true

RSpec.describe StackPrinter::Call do
  let(:trace) { "/Users/ruby/irb/workspace.rb:119:in `eval'" }
  
  subject { described_class.new(trace) }

  context "attributes" do
    it "have path" do
      expect(subject).to respond_to(:path)
      expect(subject.path).to_not be_nil
    end

    it "have line" do
      expect(subject).to respond_to(:line)
      expect(subject.line).to_not be_nil
    end
 
    it "have function_name" do
      expect(subject).to respond_to(:function_name)
      expect(subject.function_name).to_not be_nil
    end
 end

  context "instance methods" do
    it "#to_s" do
      expect(subject.to_s).to include("/Users/ruby/irb/workspace.rb")
    end
  end
end
