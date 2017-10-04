require 'spec_helper'

describe Kansen::Mapper::NoteType do
  describe '.perform' do
    context 'when wrong type' do
      it 'raises Kansen::WrongNoteType exception' do
        expect { subject.perform('foo') }.
          to raise_error Kansen::WrongNoteType
      end
    end

    context 'when valid type' do
      %w{
        string integer float constant symbol
      }.each do |type|
        it "returns #{type} type" do
          expect(subject.perform(type)).to eq type
        end
      end
    end
  end
end
