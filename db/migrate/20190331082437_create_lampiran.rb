class CreateLampiran < ActiveRecord::Migration[5.2]
  def change
    create_table :lampiran do |t|
      t.text :tautan
      t.references :informasi_berita_terkini, foreign_key: true
      t.references :informasi_pengumuman, foreign_key: true

      t.timestamps
    end
  end
end
