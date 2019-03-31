class AddLampiranToInformasiBeritaTerkini < ActiveRecord::Migration[5.2]
  def change
    add_column :informasi_berita_terkini, :lampiran, :text
  end
end
