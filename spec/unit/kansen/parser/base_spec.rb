require 'spec_helper'

describe Kansen::Parser::Base do
  describe '.initialize' do
    context 'when argument missing' do
      it 'raises ArgumentError exception' do
        expect { Kansen::Parser::Base.new }.to raise_error ArgumentError
      end
    end
  end

  describe '#parse' do
    let(:parser) { Kansen::Parser::Base.new 'note' }

    it 'raises NotImplementedError exception' do
      expect { parser.parse }.to raise_error NotImplementedError
    end
  end
end
