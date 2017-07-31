class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.string :comment
      t.datetime :date_time
      t.timestamps
      t.belongs_to :user, index: true
      t.belongs_to :resource,index: true,polymorphic: true
    end
  end
end
