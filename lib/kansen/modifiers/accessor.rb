class Kansen::Modifiers::Accessor < Struct.new(:target, :notes)
  def modify
    notes.collection.each do |note|
      target.send("#{note.key}=", note.value)
    end
  end
end
