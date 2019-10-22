class AddRefForPerm < ActiveRecord::Migration[5.2]
  def change
    add_reference :permissions, :users, foreign_key: true
    add_reference :permissions, :events, foreign_key: true
    add_reference :users, :permissions, foreign_key: true
    add_reference :events, :permissions, foreign_key: true
  end
end
