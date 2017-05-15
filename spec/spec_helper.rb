$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
#require "action_view"
#require 'progressive_loading'

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../dummy/config/environment", __FILE__)
require "rspec/rails"
