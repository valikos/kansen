require 'spec_helper'

describe Kansen::Modifiers::Hash do
  let(:notes) { { parameter: { note: 'modified', type: 'string' } } }

  describe '.modify' do
    before do
      @testee = { parameter: :default }
      collection = Kansen.parse notes
      modifier = Kansen::Modifiers::Hash.new @testee, collection
      @testee = modifier.modify
    end

    it 'applies notes' do
      expect(@testee[:parameter]).to eq 'modified'
    end
  end
end
