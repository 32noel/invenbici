class CreateParteColors < ActiveRecord::Migration[7.0]
  def change
    create_table :parte_colors do |t|
      t.references :parte, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true

      t.timestamps
    end
  end
end
