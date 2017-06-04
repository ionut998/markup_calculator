require_relative 'spec_helper'
require 'personnel_markup'

describe PersonnelMarkup do
  describe '#total_value' do
    subject(:personnel_markup_value) do
        PersonnelMarkup.total_value(
          price_including_flat_markup,
          number_of_people
        )
    end
    let(:price_including_flat_markup){ 100 }

    context 'when no people are needed to do the work' do
      let(:number_of_people){ 0 }

      it "returns 0" do
        expect(subject).to eq(0)
      end
    end

    context 'when a few people are needed to do the work' do
      let(:number_of_people){ 3 }

      it "returns the price including the flat markup plus the personnel extra" do
        expect(subject.round(2)).to eq( 3.6 )
      end
    end
  end
end
