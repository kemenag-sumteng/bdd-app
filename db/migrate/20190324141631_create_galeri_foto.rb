class CreateGaleriFoto < ActiveRecord::Migration[5.2]
  def change
    create_table :galeri_foto do |t|
      t.string :judul
      t.text :keterangan
      t.string :berkas

      t.timestamps
    end
  end
end
