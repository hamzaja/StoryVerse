class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :story_id
      t.integer :chapter_id
      t.timestamps
    end
  end
end
