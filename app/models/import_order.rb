class ImportOrder < ApplicationRecord
  belongs_to :user
  belongs_to :import_order
end
