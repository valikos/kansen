if ENV['CODECLIMATE_REPO_TOKEN']
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
end

require 'pry'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'kansen'
