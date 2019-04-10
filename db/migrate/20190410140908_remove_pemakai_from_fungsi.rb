class RemovePemakaiFromFungsi < ActiveRecord::Migration[5.2]
  def change
    remove_reference :fungsi, :pemakai, foreign_key: true
  end
end
