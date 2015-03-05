class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :question_image
      t.integer :correct_answer
      t.text :explanation
      t.integer :topic_id
      t.integer :catagory_id
      t.timestamps
    end
  end
end
