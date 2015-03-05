class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :number
      t.text :answer
      t.string :image
      t.integer :question_id

      t.timestamps
    end
  end
end
