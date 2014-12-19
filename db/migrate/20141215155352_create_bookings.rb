class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :course_id
      t.integer :classroom_id
      t.date :date

      t.timestamps
    end
  end
end
