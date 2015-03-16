module Kansen
  class Note
    attr_reader :type, :note

    TYPES = %w{
      string integer float class constant
    }

    def initialize(options = {})
      @type = check_type options.fetch(:type, :string)
      @note = options.fetch(:note) { raise Kansen::MissingNote }
      @parser = 1
    end

    def parse
      @note
    end

    protected

    def check_type(type)
      raise Kansen::WrongNoteType unless TYPES.include? type.to_s
      type
    end
  end
end
