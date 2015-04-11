module Kansen
  module Mapper
    module NoteParser

      PARSERS =
        { 'string'   => 'Null',
          'integer'  => 'Integer',
          'float'    => 'Float',
          'constant' => 'Constant' }

      def self.perform(type)
        Kernel.
          const_get('Kansen').
          const_get('Parser').
          const_get(PARSERS[type])
      rescue
        raise Kansen::MissingParser
      end
    end
  end
end
