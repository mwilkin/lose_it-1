class AddUserIdToExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :user_id, :integer
    add_index :exercises, :user_id
  end
end
