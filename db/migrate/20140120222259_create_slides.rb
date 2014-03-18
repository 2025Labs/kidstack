class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :image
      t.string :title
      t.text :desc
      t.string :audio
      t.integer :sort_id
      t.string :topicname
      t.integer :topic_id
      t.integer :catagory_id
      t.timestamps
    end
  end
end
