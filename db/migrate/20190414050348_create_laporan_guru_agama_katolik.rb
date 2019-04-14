class CreateLaporanGuruAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    create_table :laporan_guru_agama_katolik do |t|
      t.string :tautan
      t.string :nama_guru
      t.string :judul
      t.references :pemakai, foreign_key: true

      t.timestamps
    end
  end
end
