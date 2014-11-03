require 'rspec'
require_relative '../lib/make_change'

describe Changer do
  it 'can change one quarter' do
    expect(Changer.make_change(25)).to eq([25])
  end

  it 'can change multiple quarters' do
    expect(Changer.make_change(50)).to eq([25, 25])
  end

  it 'can change one dime' do
    expect(Changer.make_change(10)).to eq([10])
  end

  it 'can change multiple dimes' do
    expect(Changer.make_change(20)).to eq([10, 10])
  end

  it 'can change small complex amounts' do
    expect(Changer.make_change(7)).to eq([5, 1, 1])
  end

  it 'can change large complex amounts $0.68' do
    expect(Changer.make_change(68)).to eq([25, 25, 10, 5, 1, 1, 1])
  end

  it 'can change large complex amounts $0.76' do
    expect(Changer.make_change(76)).to eq([25, 25, 25, 1])
  end
end
