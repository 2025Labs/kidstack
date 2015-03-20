class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer_content
      t.string :image
      t.string :correct
      t.integer :question_id

      t.timestamps
    end
  end
end
