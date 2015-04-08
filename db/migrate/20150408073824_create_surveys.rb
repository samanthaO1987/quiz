class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id
      t.timestamps
    end

    add_index :surveys, :user_id
    add_index :surveys, :question_id
    add_index :surveys, :answer_id
  end
end
