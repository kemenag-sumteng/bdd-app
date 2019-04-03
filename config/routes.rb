Rails.application.routes.draw do
  devise_for :pemakai
  devise_scope :pemakai do
    get 'masuk_web_bimkat_sumteng', to: 'devise/sessions#new'
  end
  resources :laporan_kinerja_pegawai_bimkat_sumteng
  resources :laporan_penyuluh_agama_katolik
  resources :informasi_pengumuman
  resources :informasi_berita_terkini
  resources :galeri_video
  resources :galeri_foto
  resources :data_pendidikan_agama_katolik
  resources :data_keagamaan_katolik
  get 'tentang/visi-misi-kantor'
  get 'tentang/tekat-urakat'
  get 'tentang/tekat-pendakat'
	root 'halaman#index'

  get 'halaman/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
