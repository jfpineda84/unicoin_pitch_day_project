class CreateUserResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_responses do |t|
      t.text :response
      t.belongs_to :user, foreign_key: true
      t.belongs_to :question, foreign_key: true

      t.timestamps
    end
  end
end
