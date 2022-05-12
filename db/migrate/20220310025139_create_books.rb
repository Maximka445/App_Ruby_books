class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :name_book
      t.timestamps
    end
  end
end
