class LampiranController < ApplicationController
	before_action :find_informasi_berita_terkini
	def create
		@lampiran = @informasi_berita_terkini.lampiran.create(params[:lampiran],permit(:tautan))
		@lampiran.save
	end
	private
	def find_informasi_berita_terkini
		@informasi_berita_terkini = InformasiBeritaTerkini.find(params[:informasi_berita_terkini_id])
	end
end
