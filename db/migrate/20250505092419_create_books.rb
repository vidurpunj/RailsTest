class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :name
      t.datetime :published_at
      t.decimal :price, precision: 8, scale: 2
      t.string :subject
      t.integer :pages

      t.timestamps
    end
  end
end
