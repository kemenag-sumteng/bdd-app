class AddPemakaiToInformasiPengumuman < ActiveRecord::Migration[5.2]
  def change
    add_reference :informasi_pengumuman, :pemakai, foreign_key: true
  end
end
