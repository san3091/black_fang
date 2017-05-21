class CreateDanceMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :dance_memberships, id: false do |t|
      t.references :user, foreign_key: true
      t.references :dance, foreign_key: true

      t.timestamps
    end
  end
end
