class CreateVideoLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :video_links, id: false do |t|
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
    add_index(:video_links, [:parent_id, :child_id], :unique => true)
  end
end
