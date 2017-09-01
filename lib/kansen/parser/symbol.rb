module Kansen::Parser
  class Symbol
    def self.parse(note)
      note.to_sym
    end
  end
end
