class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :topic_id
      t.integer :catagory_id
      t.string :linking
      t.string :main_idea
      t.string :header
      t.string :section_image
      t.string :image_position
      t.text :image_caption
      t.text :content

      

      t.timestamps
    end
  end
end
