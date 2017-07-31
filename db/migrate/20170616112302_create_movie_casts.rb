class CreateMovieCasts < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_casts do |t|
      t.belongs_to :cast, index: true
     # t.belongs_to :movie , index: true ,polymorhic: true
      t.belongs_to :resource , index: true , polymorphic: true
      #t.belongs_to :movie,index: true
      #t.timestamps
      # t.integer :resource_id
      # t.string :resource_type
      # add_index :resources, [ :resource_type, :resource_id]
    end
    #add_index :movie_casts, [ :resource_type, :resource_id]

  end
end
