class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.integer :author_id, null: false
      t.string :title, null: false
      t.timestamp
    end

    add_index :polls, :author_id
  end
end
