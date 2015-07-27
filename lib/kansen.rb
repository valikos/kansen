require 'kansen/version'

require 'kansen/errors'
require 'kansen/mapper'
require 'kansen/parser'
require 'kansen/note'
require 'kansen/notes'

module Kansen
  class << self
    def parse(notes)
      collection = Kansen::Notes.new
      notes.each_pair do |k, v|
        collection << Kansen::Note.new(note: v[:note],
                                       type: v[:type],
                                       key: k)
      end
      collection
    end
  end
end
