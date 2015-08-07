module Kansen
  MissingNote   = Class.new(StandardError)
  MissingKey    = Class.new(StandardError)
  WrongNoteType = Class.new(StandardError)
  MissingParser = Class.new(StandardError)
end
