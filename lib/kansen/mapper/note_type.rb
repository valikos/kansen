module Kansen
  module Mapper
    module NoteType

      TYPES = %w{
        string integer float constant
      }

      def self.perform(type)
        if TYPES.include? type
          type
        else
          raise Kansen::WrongNoteType
        end
      end
    end
  end
end
