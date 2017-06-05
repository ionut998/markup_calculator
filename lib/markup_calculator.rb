require 'personnel_markup'
require 'industry_specific_markup'

class MarkupCalculator
  FLAT_MARKUP_PERCENTAGE = 5

  def initialize(base_price, number_of_people, industry)
    @base_price = base_price
    @number_of_people = number_of_people
    @industry = industry
  end

  def repackaging_price
    (price_including_flat_markup + personnel_markup + industry_specific_markup).round(2)
  end

  def price_including_flat_markup
    @base_price * ( 100 + FLAT_MARKUP_PERCENTAGE ) / 100
  end

  def personnel_markup
    PersonnelMarkup.total_value(price_including_flat_markup, @number_of_people)
  end

  def industry_specific_markup
    IndustrySpecificMarkup.total_value(price_including_flat_markup, @industry)
  end
end
