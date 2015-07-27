require 'spec_helper'

describe Kansen::Parser::Integer do
  describe '.parse' do
    it 'converts note to integer' do
      expect(Kansen::Parser::Integer.parse(13)).to eq 13
    end
  end
end
