class CreatePortals < ActiveRecord::Migration[5.0]
  def change
    create_table :portals do |t|
      t.string :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
