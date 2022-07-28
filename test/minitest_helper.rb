require 'minitest/autorun'
require 'active_support'
require 'active_support/core_ext'
load_paths = []
app_root = File.expand_path("../../../", __FILE__)

load_paths += Dir[File.expand_path("#{app_root}/{app/models,lib,app/listeners}")]

load_paths.each do |load_path|
  $LOAD_PATH.unshift(load_path) unless $LOAD_PATH.include?(load_path)
end
