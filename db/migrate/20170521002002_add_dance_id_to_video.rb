class AddDanceIdToVideo < ActiveRecord::Migration[5.1]
  def change
    add_reference :videos, :dance
  end
end
