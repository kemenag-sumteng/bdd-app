class AddPemakaiToFungsi < ActiveRecord::Migration[5.2]
  def change
    add_reference :fungsi, :pemakai, foreign_key: true
  end
end
