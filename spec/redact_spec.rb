require "spec_helper"

class TestModel
  include Redact
end

describe Redact do
  before do
    @model = TestModel.new
  end

  it_behaves_like "ActiveModel"
end
