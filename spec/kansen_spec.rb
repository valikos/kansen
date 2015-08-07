require 'spec_helper'

describe Kansen do
  describe '.parse' do
    let(:cfg) {
      { foo: { note: :foo, type: 'string' },
        bar: { note: :bar, type: 'string' } }
    }

    it 'returns collection of notes' do
      expect(Kansen.parse(cfg)).to be_a_instance_of Kansen::Notes
    end
  end

  it 'has a version number' do
    expect(Kansen::VERSION).not_to be nil
  end

  describe '.modify' do
    let(:dummy) { Dummy.new }
    let(:input) {
      { attr: { note: 'testing', type: 'string' } }
    }

    before do
      class Dummy
        attr_reader :attr
      end

      notes = Kansen.parse input
      Kansen.modify dummy, notes
    end

    it 'changes input object' do
      expect(dummy.attr).to eq 'testing'
    end
  end
end
