class Kansen::Notes
  attr_reader :collection

  def initialize
    @collection = []
  end

  def <<(note)
    puts "="*80
    puts note.class
    if note.kind_of? Kansen::Note
      @collection << note
    else
      raise Kansen::WrongNoteType
    end
  end
end
