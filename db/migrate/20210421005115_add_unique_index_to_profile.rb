class AddUniqueIndexToProfile < ActiveRecord::Migration[6.0]
  def change
    add_index :profiles, [:user_id, :id], unique: true
  end
end
