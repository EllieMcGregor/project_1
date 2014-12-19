class RemoveImageFromCampuses < ActiveRecord::Migration
  def change
    remove_column :campuses, :image, :string
  end
end
