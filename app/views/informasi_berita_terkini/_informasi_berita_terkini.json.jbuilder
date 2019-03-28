json.extract! informasi_berita_terkini, :id, :judul, :isi, :created_at, :updated_at
json.url informasi_berita_terkini_url(informasi_berita_terkini, format: :json)
