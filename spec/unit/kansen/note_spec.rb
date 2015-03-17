require 'spec_helper'

describe Kansen::Note do
  describe '.new' do
    context 'when missing note' do
      it 'raises MissingNote exception' do
        expect { Kansen::Note.new }.to raise_exception Kansen::MissingNote
      end
    end

    context 'when type not in TYPES' do
      it 'raises WrongNoteType exception' do
        expect { Kansen::Note.new(type: :fake) }.
          to raise_exception Kansen::WrongNoteType
      end
    end
  end
end
