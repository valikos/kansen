module Kansen
  module Mapper
    module NoteParser

      PARSERS = {
        'string'   => 'Null',
        'integer'  => 'Integer',
        'float'    => 'Float',
        'constant' => 'Constant',
        'symbol'   => 'Symbol'
      }.freeze

      def self.parse(type, note)
        Kernel.const_get('Kansen').const_get('Parser').const_get(PARSERS[type]).parse(note)
      rescue
        raise Kansen::MissingParser
      end
    end
  end
end
