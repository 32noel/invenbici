class CreateParteBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :parte_brands do |t|
      t.references :parte, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
