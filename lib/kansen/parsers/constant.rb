module Kansen::Parsers
  class Constant < Base
    def parse
      Kernel.const_get(@note)
    end
  end
end
