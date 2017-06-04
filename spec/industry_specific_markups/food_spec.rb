require 'spec_helper'

describe IndustrySpecificMarkups::Food do
  subject(:food_markup){ IndustrySpecificMarkups::Food }

  describe '.applicable?' do
    context 'when industry is food' do
      let(:industry){ :food }

      it 'returns true' do
        expect(subject.applicable?(industry)).to be_truthy
      end
    end

    context 'when industry is not food' do
      let(:industry){ :bar }

      it 'returns false' do
        expect(subject.applicable?(industry)).to be_falsey
      end
    end
  end
end
