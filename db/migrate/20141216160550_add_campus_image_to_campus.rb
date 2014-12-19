class AddCampusImageToCampus < ActiveRecord::Migration
  def change
    add_column :campuses, :campus_image, :string
  end
end
