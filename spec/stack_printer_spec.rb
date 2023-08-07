# frozen_string_literal: true

RSpec.describe StackPrinter do
  it "has a version number" do
    expect(described_class::VERSION).not_to be nil
  end

  context ".fink" do
    it "should return nil" do
      supress_output do
        expect(subject.fink).to be_nil
      end
    end

    it "should puts to screen" do
      supress_output do
        allow(StackPrinter::Printer).to receive(:exec)
        subject.fink
      end
    end
  end
end
