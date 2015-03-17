require 'spec_helper'

describe Kansen::Parsers::Null do
  describe '#parse' do
    let(:parser) { Kansen::Parsers::Null.new 'default' }

    it 'does not convert note' do
      expect(parser.parse).to eq 'default'
    end
  end
end
