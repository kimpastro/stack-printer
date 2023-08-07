# frozen_string_literal: true

RSpec.describe StackPrinter::Stack do
  describe "#map" do
    context "when calls attribute is empty" do
      it "returns an empty Enumerator" do
        expect(subject.map).to be_a_kind_of(Enumerator)
        expect(subject.map.count).to be_zero
      end
      
      context "when calls attribute is not empty" do
        subject do
          described_class.new(
            calls: StackPrinter::Trace.call
          )
        end

        it "returns an Array of StackPrinter::Call" do
          all_the_same_type = subject.map.all? { |call| call.is_a?(StackPrinter::Call) }
          expect(all_the_same_type).to be_truthy
        end
      end
    end
  end
end
