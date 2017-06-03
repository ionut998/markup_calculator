class MarkupCalculator
  FLAT_MARKUP_PERCENTAGE = 5

  def initialize(base_price)
    @base_price = base_price
  end

  def repackaging_price
  end

  def price_including_flat_markup
    @base_price * ( 100 + FLAT_MARKUP_PERCENTAGE ) / 100
  end
end
