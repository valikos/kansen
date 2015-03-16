require 'spec_helper'

describe Kansen::Parsers::Base do
  describe '.new' do
    context 'when argument missing' do
      it 'raises ArgumentError exception' do
        expect { Kansen::Parsers::Base.new }.to raise_exception ArgumentError
      end
    end
  end

  describe '#parse' do
    let(:parser) { Kansen::Parsers::Base.new 'note' }

    it 'raises NotImplementedError exception' do
      expect { parser.parse }.to raise_exception NotImplementedError
    end
  end
end
