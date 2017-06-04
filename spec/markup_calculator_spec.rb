require_relative 'spec_helper'

describe MarkupCalculator do
  subject(:markup_calculator) do
    MarkupCalculator.new(
      base_price,
      number_of_people
    )
  end

  let(:base_price){ 100 }
  let(:number_of_people){ 1 }

  it { is_expected.to respond_to(:repackaging_price) }

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
end
