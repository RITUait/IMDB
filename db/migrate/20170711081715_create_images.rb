class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image
      t.belongs_to :resource,index: true, polymorphic: true
      t.timestamps
    end
  end
end
