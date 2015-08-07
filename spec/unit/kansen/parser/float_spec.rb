require 'spec_helper'

describe Kansen::Parser::Float do
  describe '.parse' do
    it 'converts note to float' do
      expect(Kansen::Parser::Float.parse('13.5')).to be_within(0.5).of(13)
    end
  end
end
