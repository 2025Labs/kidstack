class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :c_type
      t.string :video
      t.string :navgraphic
      t.string :headergraphic
      t.integer :catagory_id

      t.timestamps
    end
  end
end
