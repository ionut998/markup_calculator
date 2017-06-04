class PersonnelMarkup
  PER_PERSON_MARKUP_PERCENTAGE = 1.2

  def self.total_value(price, number_of_people)
    (price * (100 + total_percentage(number_of_people)))/100 - price
  end

  def self.total_percentage(number_of_people)
    PER_PERSON_MARKUP_PERCENTAGE * number_of_people
  end
end
