require "spec_helper"

module Craps 
  describe Dice do
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