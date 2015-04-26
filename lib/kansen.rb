require 'kansen/version'

require 'kansen/mapper'
require 'kansen/parser'
require 'kansen/note'
require 'kansen/notes'

module Kansen
  MissingNote = Class.new(StandardError)
  WrongNoteType = Class.new(StandardError)
  MissingParser = Class.new(StandardError)
end
