require 'spec_helper'

describe Kansen::Parser::Null do
  describe '#parse' do
    let(:parser) { Kansen::Parser::Null.new 'default' }

    it 'does not convert note' do
      expect(parser.parse).to eq 'default'
    end
  end
end
