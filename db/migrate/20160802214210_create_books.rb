class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.references :genre, index: true, foreign_key: true
      t.references :author, index: true, foreign_key: true
      t.decimal :price

      t.timestamps null: false
    end
  end
end
