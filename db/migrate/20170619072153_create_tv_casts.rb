class CreateTvCasts < ActiveRecord::Migration[5.1]
  def change
    create_table :tv_casts do |t|
#      t.belongs_to :tv, index: true
 #     t.belongs_to :cast , index: true
  #    t.timestamps
    end
  end
end
