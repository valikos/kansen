module Kansen::Parser
  class Constant
    def self.parse(note)
      Kernel.const_get(note)
    end
  end
end
