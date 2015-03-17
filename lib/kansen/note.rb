module Kansen
  class Note
    attr_reader :type, :note

    TYPES = %w{
      string integer float constant
    }

    def initialize(options = {})
      @type = check_type options.fetch(:type, :string)
      @note = options.fetch(:note) { raise Kansen::MissingNote }
      @parser = choose_parser(@type).new(@note)
    end

    def parse
      @parser.parse
    end

    protected

    def check_type(type)
      type = type.to_s
      raise Kansen::WrongNoteType unless TYPES.include? type
      type
    end

    def choose_parser(type)
      Kernel.const_get('Kansen').const_get('Parsers').const_get(parser_map[type])
    end

    def parser_map
      { 'string'   => 'Null',
        'integer'  => 'Integer',
        'float'    => 'Float',
        'constant' => 'Constant' }
    end
  end
end
