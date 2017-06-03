require_relative 'spec_helper'
require 'markup_calculator'

describe MarkupCalculator do
  subject(:markup_calculator){ MarkupCalculator.new(base_price) }
  let(:base_price){ 100 }

  it { is_expected.to respond_to(:repackaging_price) }

  describe '#price_including_flat_markup' do
    it 'is the base price plus the flat markup value' do
      expect(subject.price_including_flat_markup).to eq(105)
    end
  end
end
