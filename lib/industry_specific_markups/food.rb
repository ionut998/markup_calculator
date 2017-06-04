module IndustrySpecificMarkups
  class Food
    MARKUP_PERCENTAGE = 13

    def self.applicable?(industry)
      industry == :food
    end
  end
end
