module Kansen::Parser
  class Constant < Base
    def parse
      Kernel.const_get(@note)
    end
  end
end
