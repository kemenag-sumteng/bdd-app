class CreateLaporanKinerjaPegawaiBimkatSumteng < ActiveRecord::Migration[5.2]
  def change
    create_table :laporan_kinerja_pegawai_bimkat_sumteng do |t|
      t.string :bulan
      t.string :tahun
      t.string :tautan

      t.timestamps
    end
  end
end
