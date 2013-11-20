class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :catagory
      t.string :video
      t.string :navgraphic

      t.timestamps
    end
  end
end
