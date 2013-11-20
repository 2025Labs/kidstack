class CreateCatagories < ActiveRecord::Migration
  def change
    create_table :catagories do |t|
      t.string :name
      t.string :navgraphic
      t.string :video
      t.string :timeline

      t.timestamps
    end
  end
end
