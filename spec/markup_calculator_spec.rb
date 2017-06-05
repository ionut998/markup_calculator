require_relative 'spec_helper'

describe MarkupCalculator do
  subject(:markup_calculator) do
    MarkupCalculator.new(
      base_price,
      number_of_people,
      industry
    )
  end

  let(:base_price){ 100 }
  let(:number_of_people){ 1 }
  let(:industry){ :pharmaceuticals }

  describe '#repackaging_price' do
    before do
      allow(subject).to receive(:price_including_flat_markup).and_return(2)
      allow(subject).to receive(:personnel_markup).and_return(3)
      allow(subject).to receive(:industry_specific_markup).and_return(5)
    end

    it 'returns the sum of base price, flat_markup, personnel_markup and industry_markup' do
      expect(subject.repackaging_price).to eq(10)
    end

    context 'when the prices contain more than 2 decimals' do
      before do
        allow(subject).to receive(:price_including_flat_markup).and_return(2.74123)
      end

      it 'rounds up the number to 2 decimals' do
        expect(subject.repackaging_price).to eq(10.74)
      end
    end
  end

  describe '#price_including_flat_markup' do
    it 'returns the base price plus the flat markup value' do
      expect(subject.price_including_flat_markup).to eq(105)
    end
  end

  describe '#personnel_markup' do
    let(:number_of_people){ 3 }

    before do
      allow(subject).to receive(:price_including_flat_markup).and_return(100)
    end

    it "returns the value of personnel markup" do
      expect(subject.personnel_markup.round(2)).to eq( 3.6 )
    end
  end

  describe '#industry_specific_markup' do
    before do
      allow(subject).to receive(:price_including_flat_markup).and_return(100)
    end

    it "returns the value of industry specific markup" do
      expect(subject.industry_specific_markup).to eq( 7.5 )
    end
  end
end
