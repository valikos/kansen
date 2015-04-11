module Kansen::Parser
  class Float < Base
    def parse
      @note.to_f
    end
  end
end
