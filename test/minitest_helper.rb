require 'test_helper'
require 'minitest/autorun'
require 'active_support'
require 'active_support/core_ext'

load_paths = []
app_root = File.expand_path("../../../", __FILE__)

load_paths += Dir[File.expand_path("#{app_root}/{app/models,lib,app/listeners}")]

load_paths.each do |load_path|
  $LOAD_PATH.unshift(load_path) unless $LOAD_PATH.include?(load_path)
end

require 'simplecov'

SimpleCov.start

require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :transaction

class Minitest::Spec
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end

class Minitest::Unit::TestCase
  include FactoryBot::Syntax::Methods
end

class Minitest::Spec
  include FactoryBot::Syntax::Methods
end