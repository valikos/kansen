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
      notes.each do |i|
        i.each_pair do |k, v|
          collection << { k => Kansen::Note.new(note: v[:note], type: v[:type]) }
        end
      end
      collection
    end
  end
end
