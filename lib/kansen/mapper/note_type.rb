module Kansen
  module Mapper
    module NoteType

      TYPES = %w[
        string integer float constant symbol
      ].freeze

      def self.perform(type)
        raise Kansen::WrongNoteType unless TYPES.include? type
        type
      end
    end
  end
end
