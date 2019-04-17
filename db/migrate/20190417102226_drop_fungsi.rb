class DropFungsi < ActiveRecord::Migration[5.2]
  def change
  	def down
	    drop_table :fungsi
	  end
  end
end
