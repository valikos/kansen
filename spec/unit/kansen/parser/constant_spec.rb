require 'spec_helper'

module Foo
  class Bar; end
end

describe Kansen::Parser::Constant do
  describe '#parse' do
    let(:parser) { Kansen::Parser::Constant.new 'Foo::Bar' }

    it 'converts note to constant' do
      expect(parser.parse).to eq Foo::Bar
    end
  end
end
