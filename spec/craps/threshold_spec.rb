require "spec_helper"

module Craps 
 
  describe Dice do


    describe "#above" do
      let(:dice) { Craps::Dice.new(6) }

      it "Above should return an array" do
        expect(dice.roll(10).above(2)).to be_an(Array)
      end

      #it "returns 0 times thrown for a new dice object" do
      #  expect(Craps::Dice.dice_thrown).to eq(0)
      #end

    end


  end

end