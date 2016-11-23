require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("cookies", 12, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cookies")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(12)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookies", "q", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do

    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("sugar")
      expect(dessert.ingredients).to eq(["sugar"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("flour")
      dessert.add_ingredient("icing")
      dessert.add_ingredient("chocolate")

      dessert.mix!

      expect(dessert.ingredients).to_not eq(["sugar", "flour", "icing", "chocolate"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(2)
      expect(dessert.quantity).to eq(10)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(13) }.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("The Chef")
      expect(dessert.serve).to match(/The Chef/)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
