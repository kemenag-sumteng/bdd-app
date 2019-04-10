class AddPemakaiToLaporanPenyuluhAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    add_reference :laporan_penyuluh_agama_katolik, :pemakai, foreign_key: true
  end
end
