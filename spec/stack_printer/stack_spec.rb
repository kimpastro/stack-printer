# frozen_string_literal: true

RSpec.describe StackPrinter::Stack do
  describe "#report" do
    context "local report" do
      it "returns stack from ROOT_PATH only" do
        is_there_any_non_root = described_class.report(false).any? { |call| !call.start_with?(StackPrinter::ROOT_PATH) }
        expect(is_there_any_non_root).to be_falsy
      end
    end

    context "default report" do
      it "returns the full stack" do
        expected_diff = described_class.report - described_class.report(false)
        expect(expected_diff).to_not be_empty
      end
    end
  end

  describe "#find" do
    context "when found" do
      it "returns a call" do
        call = described_class.find { |call| call.path.match(/\w+/) }
        expect(call).to be_a_kind_of(StackPrinter::Call)
      end
    end

    context "when not found" do
      it "returns nil" do
        call = described_class.find { |call| call.meth.start_with?("do not found") }
        expect(call).to be_nil
      end
    end
  end
end
