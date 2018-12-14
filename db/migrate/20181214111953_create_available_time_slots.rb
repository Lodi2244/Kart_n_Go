class CreateAvailableTimeSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :available_time_slots do |t|
      t.datetime :hour
      t.references :track

      t.timestamps
    end
  end
end
