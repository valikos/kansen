require 'kansen/version'

require 'kansen/errors'
require 'kansen/mapper'
require 'kansen/parser'
require 'kansen/note'
require 'kansen/notes'
require 'kansen/modifiers'

module Kansen
  MODIFY_MAP = {
    hash:     Kansen::Modifiers::Hash,
    setter:   Kansen::Modifiers::Setter,
    accessor: Kansen::Modifiers::Accessor
  }

  class << self
    def parse(notes)
      collection = Kansen::Notes.new
      notes.each_pair do |k, v|
        collection << Kansen::Note.build(note: v[:note],
                                         type: v[:type],
                                         key: k)
      end
      collection
    end

    def modify(target, args)
      MODIFY_MAP[args[:via]].new(target, args[:with]).modify
    end
  end
end
