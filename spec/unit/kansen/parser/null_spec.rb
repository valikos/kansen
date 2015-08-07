require 'spec_helper'

describe Kansen::Parser::Null do
  describe '.parse' do
    it 'does not convert string note' do
      expect(Kansen::Parser::Null.parse('default')).to eq 'default'
    end

    it 'does not convert number note' do
      expect(Kansen::Parser::Null.parse(12.3)).to eq 12.3
    end
  end
end
