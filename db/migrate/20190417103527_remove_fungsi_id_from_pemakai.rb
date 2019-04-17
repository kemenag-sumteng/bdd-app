class RemoveFungsiIdFromPemakai < ActiveRecord::Migration[5.2]
  def change
  	remove_column :pemakai, :fungsi_id
  end
end
