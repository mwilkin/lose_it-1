class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :description
      t.string :type
      t.integer :calories
      t.date :date
      
      t.timestamps
    end
  end
end
