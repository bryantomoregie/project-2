class CreateAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :amounts do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
    end
  end
end
