class CreateCatagories < ActiveRecord::Migration
  def change
    create_table :catagories do |t|
      t.string :name
      t.string :navgraphic
      t.string :color
      t.string :timeline
      t.string :headergraphic
      t.string :video
      t.string :game_name
      t.text :keypoints

      t.timestamps
    end
  end
end
