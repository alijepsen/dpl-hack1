class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :item, null: false
      t.integer :total, null: false
      t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end
