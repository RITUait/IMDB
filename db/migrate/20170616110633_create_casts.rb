class CreateCasts < ActiveRecord::Migration[5.1]
  def change
    create_table :casts do |t|
      t.string    :name
      t.date      :DOB
      t.string   :photos_URL
      t.string    :gender
      t.integer   :age
      t.boolean   :movie_or_tv
      t.text      :description
      t.timestamps
    #  t.belongs_to :movie_cast, index: true
    end
  end
end
