class AddNamaToPemakai < ActiveRecord::Migration[5.2]
  def change
    add_column :pemakai, :nama, :string
  end
end
