# Markup Calculator

The project is built using Ruby 2.4.1

## Installation:

```bash
cd markup_calculator
gem install bundler
bundle install
```

## Running tests:

```bash
bundle exec rspec
```

## Usage example

```bash
irb
require './lib/markup_calculator'
MarkupCalculator.new(1_299.99, 3, :food).repackaging_price
```

## Solution Overview

The class that does the repackaging price calculation is `MarkupCalculator`. It accepts the `base_price`, the `number_of_people` and the `industry` and based on these, it calculates the repackaging price. The repackaging price is calculated as the sum of base_price, flat markup amount, personnel markup amount and industry specific markup amount.
- The price including flat markup is calculate as a percentage of the `base_price`. The percentage value is stored as a constant (`FLAT_MARKUP_PERCENTAGE`) in `MarkupCalculator` class. If the logic behind calculating the flat markup gets more complex then this logic can be extracted in a separated class.
- The personnel markup amount is calculated by `PersonnelMarkup` class. This class calculates the amount that needs to be added on top of the price including the flat markup. This calculation is done based on the number of people, needed to do the job and the percentage for each person.
- The industry specific markup amount is calculated by `IndustrySpecificMarkup` class that takes as input the price including the flat markup and the industry. `IndustrySpecificMarkup` class contains a constant that stores all the industries requiring extra markup. When calculating the amount that needs to be added on top of the price, this class will loop through all the industries and it will try to find the one that matches the string that was passed in the input. If no industry matches then it's assumed that the industry does not require extra markup.
