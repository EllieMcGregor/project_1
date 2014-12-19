class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :room_name
      t.integer :capacity
      t.integer :campus_id

      t.timestamps
    end
  end
end
