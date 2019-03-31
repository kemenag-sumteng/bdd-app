class RemoveBulanAndTahunFromLaporanPenyuluhAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    remove_column :laporan_penyuluh_agama_katolik, :bulan, :string
    remove_column :laporan_penyuluh_agama_katolik, :tahun, :string
  end
end
