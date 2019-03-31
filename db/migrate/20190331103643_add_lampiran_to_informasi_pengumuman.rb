class AddLampiranToInformasiPengumuman < ActiveRecord::Migration[5.2]
  def change
    add_column :informasi_pengumuman, :lampiran, :text
  end
end
