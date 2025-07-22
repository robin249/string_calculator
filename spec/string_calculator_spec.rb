require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for empty string" do
      expect(described_class.add("")).to eq(0)
    end

    it "returns the number itself for single input" do
      expect(described_class.add("5")).to eq(5)
    end
  end
end
