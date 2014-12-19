class CreateInstructs < ActiveRecord::Migration
  def change
    create_table :instructs do |t|
      t.integer :course_id
      t.integer :user_id
      t.string :level

      t.timestamps
    end
  end
end
