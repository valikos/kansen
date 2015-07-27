require 'spec_helper'

module Foo
  class Bar; end
end

describe Kansen::Parser::Constant do
  describe '.parse' do
    it 'converts note to constant' do
      expect(Kansen::Parser::Constant.parse('Foo::Bar')).to eq Foo::Bar
    end
  end
end
