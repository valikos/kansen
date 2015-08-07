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
        collection << Kansen::Note.build(note: v[:note],
                                         type: v[:type],
                                         key: k)
      end
      collection
    end

    def modify(target, notes)
      target.instance_eval do
        notes.collection.each do |note|
          self.instance_variable_set("@#{note.key}", note.value)
        end
      end
    end
  end
end
