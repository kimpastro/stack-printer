# frozen_string_literal: true

RSpec.describe StackPrinter do
  it "has a version number" do
    expect(StackPrinter::VERSION).not_to be nil
  end

  describe "#{described_class}::report" do
    it "returns an Array" do
      expect(described_class.report).to be_a_kind_of(Array)
    end
  end

  describe "#{described_class}::report(deep: false)" do
    it "returns an Array" do
      expect(described_class.report(deep: false)).to be_a_kind_of(Array)
    end
  end

  describe "#{described_class}::report(as_object: true)" do
    it "returns an Array of StackPrinter::Call" do
      report_objects = described_class.report(as_object: true)
      any_non_caller = report_objects.none? {|obj| obj.is_a?(StackPrinter::Call) }

      expect(any_non_caller).to be_falsy
    end
  end
end
