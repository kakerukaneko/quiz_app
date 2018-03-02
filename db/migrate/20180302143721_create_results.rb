class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :quiz_key
      t.integer :quiz_id
      t.string :user_answer

      t.timestamps
    end
  end
end
