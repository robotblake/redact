lib = File.expand_path("../../lib", __FILE__)
$:.unshift lib unless $:.include? lib

require "bundler/setup"
require "rspec/autorun"

require "redact"

Dir[File.expand_path("../support/**/*.rb", __FILE__)].each { |f| require f }
