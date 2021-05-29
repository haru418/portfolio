class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.string :step_1
      t.string :step_2
      t.string :step_3

      t.timestamps
    end
  end
end
