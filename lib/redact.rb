require "active_model"

module Redact
  extend ActiveSupport::Concern
  include ActiveModel::Conversion
  include ActiveModel::Validations

  included do
    extend ActiveModel::Naming
  end

  def persisted?
    false
  end
end
