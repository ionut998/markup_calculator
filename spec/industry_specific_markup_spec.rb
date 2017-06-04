require_relative 'spec_helper'

describe IndustrySpecificMarkup do
  subject(:industry_specific_markup) { IndustrySpecificMarkup }

  describe '#industry_specific_percentage' do

    context 'when industry is pharmaceuticals' do
      let(:industry){ :pharmaceuticals }

      it 'returns 7.5' do
        expect(subject.industry_specific_percentage(industry)).to eq(7.5)
      end
    end

    context 'when industry is electronics' do
      let(:industry){ :electronics }

      it 'returns 2' do
        expect(subject.industry_specific_percentage(industry)).to eq(2)
      end
    end

    context 'when industry is food' do
      let(:industry){ :food }

      it 'returns 13' do
        expect(subject.industry_specific_percentage(industry)).to eq(13)
      end
    end

    context 'when industry is something else' do
      let(:industry){ :bar }

      it 'returns 0' do
        expect(subject.industry_specific_percentage(industry)).to eq(0)
      end
    end
  end
end
