class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.text :content
      t.string :content_picture
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.integer :genre_id
      t.text :quiz_comment
      t.integer :quiz_addId

      t.timestamps
    end
  end
end
