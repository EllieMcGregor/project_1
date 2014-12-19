class CreateCampuses < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
