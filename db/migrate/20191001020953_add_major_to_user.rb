class AddMajorToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :major, :integer
    add_column :users, :grad_year, :integer
    add_column :users, :school, :integer
  end
end
