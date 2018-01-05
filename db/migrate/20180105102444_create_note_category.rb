class CreateNoteCategory < ActiveRecord::Migration[5.1]
  def change
    create_table :note_categories do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :user_id, :integer

      t.timestamps
    end

    add_index :note_categories, :user_id
    add_index :note_categories, :name
  end
end
