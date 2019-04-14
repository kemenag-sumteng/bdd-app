class AddFungsiToPemakai < ActiveRecord::Migration[5.2]
  def change
    add_column :pemakai, :fungsi, :string, :default => "Pengunjung"
  end
end
