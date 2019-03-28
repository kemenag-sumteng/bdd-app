class CreateLaporanPenyuluhAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    create_table :laporan_penyuluh_agama_katolik do |t|
      t.string :bulan
      t.string :tahun
      t.text :tautan
      t.string :nama_penyuluh

      t.timestamps
    end
  end
end
