class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :user_id
      t.string :recipe_url
    end
  end
end
