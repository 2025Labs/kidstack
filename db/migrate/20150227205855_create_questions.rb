class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_content
      t.string :question_image
      t.text :explanation
      t.integer :topic_id
      t.integer :catagory_id
      t.integer :question_num 
      t.timestamps
    end
  end
end
