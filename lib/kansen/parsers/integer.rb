module Kansen::Parsers
  class Integer < Base
    def parse
      @note.to_i
    end
  end
end
