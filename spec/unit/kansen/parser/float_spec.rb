require 'spec_helper'

describe Kansen::Parser::Float do
  describe '#parse' do
    let(:parser) { Kansen::Parser::Float.new '13.5' }

    it 'converts note to float' do
      expect(parser.parse).to be_within(0.5).of(13)
    end
  end
end
