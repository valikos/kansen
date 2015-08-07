module Kansen
  class Note
    attr_reader :key, :value

    def self.build(args = {})
      note = args.fetch(:note) { raise Kansen::MissingNote }
      key = args.fetch(:key) { raise Kansen::MissingKey }
      type = Kansen::Mapper::NoteType.perform args[:type]
      new key, Kansen::Mapper::NoteParser.parse(type, note)
    end

    def initialize(key, value)
      @key = key
      @value = value
    end
  end
end
