require_relative '../../../spec_helper'
require_relative '../fixtures/classes'

describe "Delegator#eql?" do
  it "returns true when compared with same delegator" do
    base = mock('base')
    delegator = DelegateSpecs::Delegator.new(base)

    delegator.eql?(delegator).should be_true
  end

  it "returns true when compared with the inner object" do
    base = mock('base')
    delegator = DelegateSpecs::Delegator.new(base)

    delegator.eql?(base).should be_true
  end

  it "returns false when compared with the delegator with other object" do
    base = mock('base')
    other = mock('other')
    delegator0 = DelegateSpecs::Delegator.new(base)
    delegator1 = DelegateSpecs::Delegator.new(other)

    delegator0.eql?(delegator1).should be_false
  end

  it "returns false when compared with the other object" do
    base = mock('base')
    other = mock('other')
    delegator = DelegateSpecs::Delegator.new(base)

    delegator.eql?(other).should be_false
  end
end
