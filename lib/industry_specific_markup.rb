require 'industry_specific_markups/food'
require 'industry_specific_markups/electronics'
require 'industry_specific_markups/pharmaceuticals'

class IndustrySpecificMarkup
  INDUSTRY_SPECIFIC_MARKUPS_RULES = [
    IndustrySpecificMarkups::Pharmaceuticals,
    IndustrySpecificMarkups::Food,
    IndustrySpecificMarkups::Electronics
  ]

  def self.industry_specific_percentage(industry)
    markup = INDUSTRY_SPECIFIC_MARKUPS_RULES.find{ |r| r.applicable?(industry) }
    return 0 unless markup
    markup::MARKUP_PERCENTAGE
  end
end
