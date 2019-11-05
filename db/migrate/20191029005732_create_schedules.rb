class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string   :day
      t.string   :start_time
      t.string   :end_time
      t.date     :date
      t.integer :user_id
    end
    add_index  :schedules, :user_id
  end
end
