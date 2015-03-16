module Kansen
  module Parsers
    class Base
      def initialize(note)
        @note = note
      end

      def parse
        raise NotImplementedError
      end
    end
  end
end
