require 'spec_helper'

describe Kansen::Parser::Integer do
  describe '#parse' do
    let(:parser) { Kansen::Parser::Integer.new '13' }

    it 'converts note to integer' do
      expect(parser.parse).to eq 13
    end
  end
end
