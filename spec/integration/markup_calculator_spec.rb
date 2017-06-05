require 'spec_helper'

describe MarkupCalculator do
  subject(:markup_calculator) do
    MarkupCalculator.new(
      base_price,
      number_of_people,
      industry
    )
  end

  describe 'example 1' do
    let(:base_price){ 1_299.99 }
    let(:number_of_people){ 3 }
    let(:industry){ :food }

    it 'calculate the price correctly' do
      expect(subject.repackaging_price).to eq(1_591.58)
    end
  end

  describe 'example 2' do
    let(:base_price){ 5_432.00 }
    let(:number_of_people){ 1 }
    let(:industry){ :pharmaceuticals }

    it 'calculate the price correctly' do
      expect(subject.repackaging_price).to eq(6_199.81)
    end
  end

  describe 'example 3' do
    let(:base_price){ 12_456.95 }
    let(:number_of_people){ 4 }
    let(:industry){ :books }

    it 'calculate the price correctly' do
      expect(subject.repackaging_price).to eq(13_707.63)
    end
  end
end
