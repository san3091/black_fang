class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :youtube_url
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
