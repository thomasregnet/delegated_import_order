class CreateImportOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :import_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :import_order, foreign_key: true
      t.text :uri
      t.integer :requests_count, limit: 2
      t.text :importable_type
      t.string :importable_id

      t.timestamps
    end
  end
end
