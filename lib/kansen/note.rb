module Kansen
  class Note
    attr_reader :type, :note

    def initialize(args = {})
      @note = args.fetch(:note) { raise Kansen::MissingNote }
      @type = Kansen::Mapper::NoteType.perform args[:type]
      @parser = Kansen::Mapper::NoteParser.perform(@type, @note)
    end

    def parse
      @parser.parse
    end
  end
end
