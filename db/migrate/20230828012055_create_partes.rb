class CreatePartes < ActiveRecord::Migration[7.0]
  def change
    create_table :partes do |t|
      t.string :name
      t.text :description
      t.references :color, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
