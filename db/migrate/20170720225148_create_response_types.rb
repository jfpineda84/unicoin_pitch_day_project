class CreateResponseTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :response_types do |t|
      t.string :type
      t.text :data

      t.timestamps
    end
  end
end
