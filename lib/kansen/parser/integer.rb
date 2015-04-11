module Kansen::Parser
  class Integer < Base
    def parse
      @note.to_i
    end
  end
end
