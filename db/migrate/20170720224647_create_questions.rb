class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :position
      t.string :name
      t.string :text
      t.belongs_to :form, foreign_key: true

      t.timestamps
    end
  end
end
