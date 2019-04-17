class CreateFungsi < ActiveRecord::Migration[5.2]
  def change
    create_table :fungsi do |t|
      t.string :nama

      t.timestamps
    end
  end
end
