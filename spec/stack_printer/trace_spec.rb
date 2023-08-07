# fronze_literal_string: true

RSpec.describe StackPrinter::Trace do
  context ".call" do
    it "returns an Array" do
      expect(described_class.call).to be_a_kind_of(Array)
    end

    it "returns an Array of String" do
      expect(described_class.call.sample).to be_a_kind_of(String)
    end
  end
end
