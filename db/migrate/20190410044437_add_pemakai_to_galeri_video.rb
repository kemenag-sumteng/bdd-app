class AddPemakaiToGaleriVideo < ActiveRecord::Migration[5.2]
  def change
    add_reference :galeri_video, :pemakai, foreign_key: true
  end
end
