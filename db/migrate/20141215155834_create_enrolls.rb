class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.integer :course_id
      t.integer :user_id
      t.string :payment_status

      t.timestamps
    end
  end
end
