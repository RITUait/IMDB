class RemoveImageFromCasts < ActiveRecord::Migration[5.1]
  def up
    remove_column :casts, :image
  end
  def down
    add_column :casts, :image, :string
  end
end
