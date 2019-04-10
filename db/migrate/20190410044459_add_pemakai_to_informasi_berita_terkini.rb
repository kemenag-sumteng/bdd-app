class AddPemakaiToInformasiBeritaTerkini < ActiveRecord::Migration[5.2]
  def change
    add_reference :informasi_berita_terkini, :pemakai, foreign_key: true
  end
end
