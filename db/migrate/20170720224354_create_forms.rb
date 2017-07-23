class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string :form
      t.string :tax_return

      t.timestamps
    end
  end
end
