class AddSectionToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :section, :integer
  end
end
