require 'spec_helper'

describe Kansen::Mapper::NoteParser do
  context 'when can\'t map parse' do
    it 'raises Kansen::MissingParser exception' do
      expect { Kansen::Mapper::NoteParser.parse 'foo', 'bar' }.
        to raise_error Kansen::MissingParser
    end
  end

  context 'when valid type' do
    it 'returns string' do
      expect(Kansen::Mapper::NoteParser.parse('string', 'foo')).
        to be_a String
    end

    it 'returns integer' do
      expect(Kansen::Mapper::NoteParser.parse('integer', 'foo')).
        to be_a Integer
    end

    it 'returns float' do
      expect(Kansen::Mapper::NoteParser.parse('float', 'foo')).
        to be_a Float
    end

    it 'returns constant' do
      expect(Kansen::Mapper::NoteParser.parse('constant', 'BasicObject')).
        to be_a BasicObject
    end
  end
end
