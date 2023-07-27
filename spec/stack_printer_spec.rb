# frozen_string_literal: true

RSpec.describe StackPrinter do
  it "has a version number" do
    expect(StackPrinter::VERSION).not_to be nil
  end

  describe "#{described_class}::full_report" do
    it "returns an Array" do
      expect(described_class.report).to be_a_kind_of(Array)
    end
  end

  describe "#{described_class}::local_report" do
    it "returns an Array" do
      expect(described_class.report(false)).to be_a_kind_of(Array)
    end
  end
end
