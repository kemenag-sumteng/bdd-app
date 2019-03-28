class CreateInformasiBeritaTerkini < ActiveRecord::Migration[5.2]
  def change
    create_table :informasi_berita_terkini do |t|
      t.string :judul
      t.text :isi

      t.timestamps
    end
  end
end
