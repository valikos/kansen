class Kansen::Modifiers::Setter < Struct.new(:target, :notes)
  def modify
    notes.collection.each do |note|
      target.instance_eval do
        self.instance_variable_set("@#{note.key}", note.value)
      end
    end
  end
end
