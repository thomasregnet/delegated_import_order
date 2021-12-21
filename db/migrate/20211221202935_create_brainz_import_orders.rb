class CreateBrainzImportOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :brainz_import_orders do |t|
      t.uuid :code, null: false
      t.text :kind, null: false
      t.text :state, null: false
    end
  end
end
