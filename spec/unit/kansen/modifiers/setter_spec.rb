require 'spec_helper'

class Testee
  attr_reader :parameter

  def initialize
    @parameter = :default
  end
end

describe Kansen::Modifiers::Setter do
  let(:testee) { Testee.new }
  let(:notes) { { parameter: { note: 'modified', type: 'string' } } }

  describe '.modify' do
    before do
      collection = Kansen.parse notes
      modifier = Kansen::Modifiers::Setter.new testee, collection
      modifier.modify
    end

    it 'applies notes' do
      expect(testee.parameter).to eq 'modified'
    end
  end
end
