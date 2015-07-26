require 'spec_helper'

describe Kansen do
  describe '.parse' do
    let(:cfg) {
      [ {foo: { note: :foo, type: 'string' }},
        {bar: { note: :bar, type: 'string' }} ]
    }

    it 'returns collection of notes' do
      expect(Kansen.parse(cfg)).to be_a_instance_of Kansen::Notes
    end
  end

  it 'has a version number' do
    expect(Kansen::VERSION).not_to be nil
  end
end
