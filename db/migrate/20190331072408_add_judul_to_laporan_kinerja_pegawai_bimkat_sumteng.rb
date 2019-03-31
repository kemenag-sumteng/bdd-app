class AddJudulToLaporanKinerjaPegawaiBimkatSumteng < ActiveRecord::Migration[5.2]
  def change
    add_column :laporan_kinerja_pegawai_bimkat_sumteng, :judul, :string
  end
end
