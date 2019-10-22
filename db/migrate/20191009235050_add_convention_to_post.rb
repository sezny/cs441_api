class AddConventionToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :duration, :string
  end
end
