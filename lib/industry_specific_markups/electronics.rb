module IndustrySpecificMarkups
  class Electronics
    MARKUP_PERCENTAGE = 2

    def self.applicable?(industry)
      industry == :electronics
    end
  end
end
