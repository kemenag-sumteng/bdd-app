class RemoveBulanAndTahunFromLaporanKinerjaPegawaiBimkatSumteng < ActiveRecord::Migration[5.2]
  def change
    remove_column :laporan_kinerja_pegawai_bimkat_sumteng, :bulan, :string
    remove_column :laporan_kinerja_pegawai_bimkat_sumteng, :tahun, :string
  end
end
