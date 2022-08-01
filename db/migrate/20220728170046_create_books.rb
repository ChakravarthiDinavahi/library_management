class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :language
      t.string :publisher
      t.date :publication_date
      t.integer :isbn
      t.string :author
      t.integer :copies
      t.float :cost
      t.string :remarks
      t.json :others
      t.timestamps
    end
  end
end
