class CreateJoinTableEventPermission < ActiveRecord::Migration[5.2]
  def change
    create_join_table :events, :permissions do |t|
      # t.index [:event_id, :permission_id]
      # t.index [:permission_id, :event_id]
    end
  end
end
