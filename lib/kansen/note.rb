module Kansen
  class Note
    attr_reader :type, :note

    def initialize(options = {})
      @note = options.fetch(:note) { raise Kansen::MissingNote }
      @type = Kansen::Mapper::NoteType.perform options[:type]
      @parser = Kansen::Mapper::NoteParser.perform(@type).new(@note)
    end

    def parse
      @parser.parse
    end
  end
end
