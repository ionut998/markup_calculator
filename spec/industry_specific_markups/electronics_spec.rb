require 'spec_helper'

describe IndustrySpecificMarkups::Electronics do
  subject(:electronics_markup){ IndustrySpecificMarkups::Electronics }

  describe '.applicable?' do
    context 'when industry is electronics' do
      let(:industry){ :electronics }

      it 'returns true' do
        expect(subject.applicable?(industry)).to be_truthy
      end
    end

    context 'when industry is not electronics' do
      let(:industry){ :bar }

      it 'returns false' do
        expect(subject.applicable?(industry)).to be_falsey
      end
    end
  end
end
