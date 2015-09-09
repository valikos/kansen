class Kansen::Modifiers::Hash < Struct.new(:target, :notes)
  def modify
    target.merge(self.to_hash)
  end

  def to_hash
    h = {}
    notes.collection.each do |note|
      h[note.key] = note.value
    end
    h
  end
end
