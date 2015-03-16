require 'spec_helper'

describe Kansen::Parsers::Integer do
  describe '#parse' do
    let(:parser) { Kansen::Parsers::Integer.new '13' }

    it 'converts note to integer' do
      expect(parser.parse).to eq 13
    end
  end
end
