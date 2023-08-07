# frozen_string_literal: true

RSpec.describe StackPrinter::Constants do
  it "has ROOT_PATH" do
    expect(described_class::ROOT_PATH).to eq(File.expand_path("./"))
  end
end
