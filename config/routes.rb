Rails.application.routes.draw do
  get 'tentang/visi-misi-kantor'
  get 'tentang/tekat-urakat'
  get 'tentang/tekat-pendakat'
	root 'halaman#index'

  get 'halaman/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
