class CreateNote < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.column :body, :text
      t.column :note_category_id, :integer

      t.timestamps
    end

    add_index :notes, :note_category_id
  end
end
