module Kansen::Parser
  class Integer
    def self.parse(note)
      note.to_i
    end
  end
end
