class AddNamaPegawaiToLaporanKinerjaPegawaiBimkatSumteng < ActiveRecord::Migration[5.2]
  def change
    add_column :laporan_kinerja_pegawai_bimkat_sumteng, :nama_pegawai, :string
  end
end
