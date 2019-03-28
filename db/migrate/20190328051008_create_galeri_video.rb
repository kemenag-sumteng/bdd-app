class CreateGaleriVideo < ActiveRecord::Migration[5.2]
  def change
    create_table :galeri_video do |t|
      t.string :judul
      t.text :keterangan
      t.string :berkas

      t.timestamps
    end
  end
end
