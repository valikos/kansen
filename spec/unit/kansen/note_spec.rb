require 'spec_helper'

describe Kansen::Note do
  let(:type) { 'string' }
  let(:note) { 'tomato' }
  let(:key)  { 'parameter' }

  describe '.build' do
    context 'when missing params' do
      it 'raises MissingNote exception without note' do
        expect { Kansen::Note.build }.to raise_error Kansen::MissingNote
      end

      it 'raises MissingKey exception without key' do
        expect { Kansen::Note.build note: note }.to raise_error Kansen::MissingKey
      end
    end

    context 'when passing arguments' do
      before do
        allow(Kansen::Mapper::NoteType).to receive(:perform) { type }
        allow(Kansen::Mapper::NoteParser).to receive(:parse) { note }
      end

      it 'return subject instance' do
        expect(Kansen::Note.build(note: note, type: type, key: key)).
          to be_a Kansen::Note
      end
    end
  end

  describe '.initialize' do
    context 'when passing arguments' do
      let(:obj) { Kansen::Note.new('key', 'value') }

      it 'response to key' do
        expect(obj.respond_to? :key).to be true
      end

      it 'response to value' do
        expect(obj.respond_to? :value).to be true
      end
    end
  end
end
