require "spec_helper"

shared_examples_for "ActiveModel" do
  require "test/unit/assertions"
  require "active_model/lint"

  include Test::Unit::Assertions
  include ActiveModel::Lint::Tests

  methods = ActiveModel::Lint::Tests.public_instance_methods.grep(/^test_/)

  methods.each do |method|
    example method.to_s.gsub("_", " ") do
      send method
    end
  end
end
