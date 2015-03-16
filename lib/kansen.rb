require 'kansen/version'

require 'kansen/note'
require 'kansen/parsers'

module Kansen
  MissingNote = Class.new(StandardError)
  WrongNoteType = Class.new(StandardError)
end
