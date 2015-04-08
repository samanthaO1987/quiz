class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :weighted_value, default: 0
      t.integer :question_id
      t.integer :position
      t.timestamps
    end

    add_index :answers, :question_id
  end
end
