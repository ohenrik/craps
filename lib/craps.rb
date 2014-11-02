require "craps/version"

module Craps

  class Dice

    attr_reader :sides
    attr_reader :last_result

    def initialize(sides)
      @sides = sides
    end

    #Check how many dices that have been thrown in total
    @@dices_thrown = 0
    def self.dices_thrown
        @@dices_thrown
    end

    # Throw one or many times
    def roll(throw_times=1)
      result_array = []
      throw_times.times do |n|
        result_array[n] = rand(1..@sides)
        @@dices_thrown += 1
      end
      # bothe set the last result and return it.
      @last_result = result_array
    end


    # Some statistical helpers
    # Check what the probability is of getting equalt to or more than a given result.
    def base_prob
      return (1/@sides)
    end

    def higher_or_equal_to(numb)
      if valid_integer(numb)
        # Here we need to add 1/6 to get the correct result of "more than or equal"
        1 - (numb.to_f/@sides.to_f) + (1.0/6.0)
      end
    end

    # Same as above but lower or equal
    def lower_or_equal_to(numb)
      if valid_integer(numb)
        (numb.to_f/@sides.to_f)
      end
    end

    def valid_integer(numb)
      if numb.is_a? Integer
        if @sides < numb
          puts "Imposible: You cannot roll a higher number than the dice sides or bellow 1"
          false
        elsif @sides >= numb && numb > 0
          true
        end
      else
        puts "You did not enter an integer"
        false
      end
    end

  end

  # A standard D6 dice for easier access
  class D6 < Dice

    def initialize
      @sides = 6
    end

  end

end
