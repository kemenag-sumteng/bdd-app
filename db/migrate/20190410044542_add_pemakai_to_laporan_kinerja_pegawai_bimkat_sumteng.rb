class AddPemakaiToLaporanKinerjaPegawaiBimkatSumteng < ActiveRecord::Migration[5.2]
  def change
    add_reference :laporan_kinerja_pegawai_bimkat_sumteng, :pemakai, foreign_key: true
  end
end
