class AddFungsiToPemakai < ActiveRecord::Migration[5.2]
  def change
    add_reference :pemakai, :fungsi, foreign_key: true
  end
end
