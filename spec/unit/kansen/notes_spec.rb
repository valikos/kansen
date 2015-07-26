require 'spec_helper'

describe Kansen::Notes do
  describe '#<<' do
    let(:notes) { Kansen::Notes.new }

    context 'when wrong note' do
      let(:note) { double('FakeNote') }

      xit 'raises WrongNoteType exception' do
        expect { notes << note }.to raise_error Kansen::WrongNoteType
      end
    end

    context 'when right note' do
      let(:note) { Kansen::Note.new(note: 'tomato', type: 'string') }

      it 'collects one' do
        notes << note
        expect(notes.collection.length). to eq 1
      end
    end
  end
end
