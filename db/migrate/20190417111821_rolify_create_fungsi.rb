class RolifyCreateFungsi < ActiveRecord::Migration[5.2]
  def change
    create_table(:fungsi) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:pemakai_fungsi, :id => false) do |t|
      t.references :pemakai
      t.references :fungsi
    end
    
    add_index(:fungsi, [ :name, :resource_type, :resource_id ])
    add_index(:pemakai_fungsi, [ :pemakai_id, :fungsi_id ])
  end
end
