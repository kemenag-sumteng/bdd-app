class CreateFungsis < ActiveRecord::Migration[5.2]
  def change
    create_table :fungsis do |t|
      t.string :nama
      t.string :string

      t.timestamps
    end
  end
end
