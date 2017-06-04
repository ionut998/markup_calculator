class MarkupCalculator
  FLAT_MARKUP_PERCENTAGE = 5

  def initialize(base_price, number_of_people)
    @base_price = base_price
    @number_of_people = number_of_people
  end

  def repackaging_price
  end

  def price_including_flat_markup
    @base_price * ( 100 + FLAT_MARKUP_PERCENTAGE ) / 100
  end

  def personnel_markup
    PersonnelMarkup.total_value(price_including_flat_markup, @number_of_people)
  end
end
