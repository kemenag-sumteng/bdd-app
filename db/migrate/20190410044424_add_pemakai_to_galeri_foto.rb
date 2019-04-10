class AddPemakaiToGaleriFoto < ActiveRecord::Migration[5.2]
  def change
    add_reference :galeri_foto, :pemakai, foreign_key: true
  end
end
