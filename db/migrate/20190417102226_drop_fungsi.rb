class DropFungsi < ActiveRecord::Migration[5.2]
  def change
    drop_table :fungsi
    end
  end
end
