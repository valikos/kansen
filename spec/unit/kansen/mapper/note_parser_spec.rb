require 'spec_helper'

describe Kansen::Mapper::NoteParser do
  context 'when can\'t map parse' do
    it 'raises Kansen::MissingParser exception' do
      expect { Kansen::Mapper::NoteParser.perform 'foo' }.
        to raise_error Kansen::MissingParser
    end
  end

  context 'when valid type' do
    it 'return Kansen::Parser::Null for string type' do
      expect(Kansen::Mapper::NoteParser.perform 'string').
        to be Kansen::Parser::Null
    end

    it 'return Kansen::Parser::Integer for integer type' do
      expect(Kansen::Mapper::NoteParser.perform 'integer').
        to be Kansen::Parser::Integer
    end

    it 'return Kansen::Parser::Float for float type' do
      expect(Kansen::Mapper::NoteParser.perform 'float').
        to be Kansen::Parser::Float
    end

    it 'return Kansen::Parser::Constant for constant type' do
      expect(Kansen::Mapper::NoteParser.perform 'constant').
        to be Kansen::Parser::Constant
    end
  end
end
