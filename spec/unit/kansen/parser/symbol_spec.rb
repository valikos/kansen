require 'spec_helper'

describe Kansen::Parser::Integer do
  describe '.parse' do
    it 'converts note to integer' do
      expect(Kansen::Parser::Symbol.parse('kansen')).to eq :kansen
    end
  end
end
