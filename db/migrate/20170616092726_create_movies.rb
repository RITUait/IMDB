class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string  :name
      t.string  :language
      t.string  :genre
      t.string  :release_date
      t.string  :trailer_URL
      t.string  :summary_URL
      t.decimal :duration
      t.text    :description
      t.string  :movie_URL

      t.timestamps
    end
  end
end
