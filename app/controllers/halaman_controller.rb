class HalamanController < ApplicationController
  def index
  	@informasi_berita_terkini = InformasiBeritaTerkini.all
  	@pemakai_aktif = current_pemakai
  end
end
