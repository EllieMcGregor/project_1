class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :price

      t.timestamps
    end
  end
end
