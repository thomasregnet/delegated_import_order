# frozen_string_literal: true

class ImportOrder < ApplicationRecord
  belongs_to :user
  belongs_to :import_order, required: false

  delegated_type :importable, types: %w[BrainzImportOrder]
end
