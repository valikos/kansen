module Kansen::Parsers
  class Float < Base
    def parse
      @note.to_f
    end
  end
end
