# frozen_string_literal: true

module Importable
  extend ActiveSupport::Concern

  included do
    has_one :import_order, as: :importable, touch: true
  end
end