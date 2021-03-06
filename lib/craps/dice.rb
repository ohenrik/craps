module Craps

  class Dice

    attr_reader :result
    attr_reader :sides

    def initialize(sides)
      @sides = sides
    end

    #Check how many dices that have been thrown in total
    @@dice_thrown = 0
    def self.dice_thrown
        @@dice_thrown
    end

    # Throw one or many times
    def roll(throw_times=1)
      result_array = []
      throw_times.times do |n|
        result_array[n] = rand(1..@sides)
        @@dice_thrown += 1
      end
      # Both remember the result and return it.
      @result = result_array
      self
    end

    #return the roll result array
    def result
      @result
    end

    #def sum
    #  result.inject(:+)
    #end

    # Above or equal to a given integer
    def above(int=1)
      result.select { |v| v >= int }
    end

    # Bellow or equal a given integer
    def bellow(int=@sides)
      result.select { |v| v <= int }
    end

    # Some statistical helpers
    # Check what the probability is of getting equalt to or more than a given result.
    def base_prob
      return (1.0/@sides.to_f)
    end

    def higher_or_equal_to(numb)
      if valid_integer(numb)
        # Here we need to add 1/6 to get the correct result of "more than or equal"
        1 - (numb.to_f/@sides.to_f) + (1.0/@sides.to_f)
      end
    end

    # Same as above but lower or equal
    def lower_or_equal_to(numb)
      if valid_integer(numb)
        (numb.to_f/@sides.to_f)
      end
    end

    
    private

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

  end #end of Dice Class

  # A standard D6 dice for easier access
  class D6 < Dice

    def initialize
      @sides = 6
    end

  end

end