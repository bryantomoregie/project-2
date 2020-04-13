class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :comments
      t.integer :ratings
      t.integer :recipe_id
    end
  end
end
