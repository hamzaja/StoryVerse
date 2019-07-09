class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  end
end
