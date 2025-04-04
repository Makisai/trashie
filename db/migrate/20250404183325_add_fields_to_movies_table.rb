class AddFieldsToMoviesTable < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :imdb_rating, :float
    add_column :movies, :description, :text
    add_column :movies, :watched_at, :datetime
    add_column :movies, :trailer_url, :string
  end
end
