class AddResponseTypeToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :response_type, :string
  end
end
