class AddTableRatings < ActiveRecord::Migration[8.0]
  def change
    create_table :ratings do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :rating, null: false
      t.string :emoji

      t.timestamps
    end

    add_index :ratings, [:movie_id, :user_id, :created_at]
  end
end
