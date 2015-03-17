module Kansen::Parsers
  class Null < Base
    def parse
      @note
    end
  end
end
