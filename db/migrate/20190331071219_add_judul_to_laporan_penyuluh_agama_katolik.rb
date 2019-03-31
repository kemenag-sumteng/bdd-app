class AddJudulToLaporanPenyuluhAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    add_column :laporan_penyuluh_agama_katolik, :judul, :string
  end
end
