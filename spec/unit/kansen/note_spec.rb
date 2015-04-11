require 'spec_helper'

describe Kansen::Note do
  let(:type) { 'string' }
  let(:note) { 'tomato' }
  let(:parser) { double('Parser', parse: 'tomato') }

  describe '.initialize' do
    context 'when missing params' do
      it 'raises MissingNote exception' do
        expect { Kansen::Note.new }.to raise_error Kansen::MissingNote
      end
    end

    context 'when passing arguments' do
      before do
        allow(Kansen::Mapper::NoteType).to receive(:perform) { type }
        allow(Kansen::Mapper::NoteParser).to receive(:perform) { parser }
        @object = Kansen::Note.new(note: 'tomato', type: 'string')
      end

      it 'sets type from mapper' do
        expect(@object.type).to eq 'string'
      end

      it 'sets note from parser' do
        expect(@object.note).to eq 'tomato'
      end
    end
  end

  describe '#parse' do
    before do
      allow(Kansen::Mapper::NoteType).to receive(:perform) { type }
      allow(Kansen::Mapper::NoteParser).to receive(:perform) { parser }
      @object = Kansen::Note.new(note: 'tomato', type: 'string')
    end

    it 'returns parsed note' do
      expect(@object.parse).to eq 'tomato'
    end
  end
end
