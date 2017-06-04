require 'spec_helper'

describe IndustrySpecificMarkups::Pharmaceuticals do
  subject(:food_markup){ IndustrySpecificMarkups::Pharmaceuticals }

  describe '.applicable?' do
    context 'when industry is pharmaceuticals' do
      let(:industry){ :pharmaceuticals }

      it 'returns true' do
        expect(subject.applicable?(industry)).to be_truthy
      end
    end

    context 'when industry is not pharmaceuticals' do
      let(:industry){ :bar }

      it 'returns false' do
        expect(subject.applicable?(industry)).to be_falsey
      end
    end
  end
end
