# Craps

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'craps'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install craps

##  Basic Usage

  First include Craps
  ```
  include Craps
  ```

  Then instantiate a new six sided die with:
  ```
  dice = Dice.new(6)
  ``` 

  Alternatively use the subclass:
  ```
  die = D6.new
  ```

  Throw a single die with:
  ```
  dice.roll
  ```

  Throw multiple dice with: 
  ```
  dice.roll(2)
  ``` 

## Probability

  To get the probability of throwing equal to or above a certain number on a die you can use the `higher_or_equal_to` method.
  ```
  # On a 6 sided die there is a chance 33.3% to get 5 or above:
  dice.higher_or_equal_to(5)
  # returns 0.33333333333333326 
  ```

  You can also do the oposite. Calculate the chanse to get equal to or bellow a certain number:
  ```
  # On a 6 sided die there is a 83.33333% chance to get 5 or bellow:
  dice.lower_or_equal_to(5)
  # returns 0.8333333333333334
  ```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
