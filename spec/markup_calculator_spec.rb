require_relative "spec_helper"
require 'markup_calculator'

describe MarkupCalculator do
  it { is_expected.to respond_to(:repackaging_price) }
end
