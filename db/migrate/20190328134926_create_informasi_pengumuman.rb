class CreateInformasiPengumuman < ActiveRecord::Migration[5.2]
  def change
    create_table :informasi_pengumuman do |t|
      t.string :judul
      t.text :isi

      t.timestamps
    end
  end
end
