module IndustrySpecificMarkups
  class Pharmaceuticals
    MARKUP_PERCENTAGE = 7.5

    def self.applicable?(industry)
      industry == :pharmaceuticals
    end
  end
end
