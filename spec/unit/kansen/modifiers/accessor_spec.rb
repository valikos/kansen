require 'spec_helper'

class Testee
  attr_accessor :parameter

  def initialize
    @parameter = :default
  end
end

describe Kansen::Modifiers::Accessor do
  let(:testee) { Testee.new }
  let(:notes) { { parameter: { note: 'modified', type: 'string' } } }

  describe '.modify' do
    before do
      collection = Kansen.parse notes
      modifier = Kansen::Modifiers::Accessor.new testee, collection
      modifier.modify
    end

    it 'applies notes' do
      expect(testee.parameter).to eq 'modified'
    end
  end
end
