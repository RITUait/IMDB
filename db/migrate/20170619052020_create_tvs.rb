class CreateTvs < ActiveRecord::Migration[5.1]
  def change
    create_table :tvs do |t|
      t.string :name
      t.string :language
      t.string :genre
      t.date :release_date
      t.string :trailer_URL
      t.integer :duration
      t.text :description
      t.string :tv_URL
      t.string :summary_URL
      
      t.timestamps
    end
  end
end
