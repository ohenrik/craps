require "spec_helper"

module Craps 
 
  describe Dice do


    describe "#dice_thrown" do
      let(:thrown_times) { Craps::Dice.new(6) }

      it "dice_thrown should be an integer" do
        expect(Craps::Dice.dice_thrown).to be_an(Integer)
      end

      it "returns 0 times thrown for a new dice object" do
        expect(Craps::Dice.dice_thrown).to eq(0)
      end

    end
    
    describe "#roll" do
      let(:roll) { Craps::D6.new.roll(6) }

      it "returns an integer" do
        expect(roll).to be_a(Array)
      end

      it "Is the correct lenght" do
        expect(roll.size).to eq(6)
      end

    end


  end

end