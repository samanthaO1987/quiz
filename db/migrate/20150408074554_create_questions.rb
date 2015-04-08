class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.boolean :active, default: true
      t.integer :position
      t.timestamps
    end
  end
end
