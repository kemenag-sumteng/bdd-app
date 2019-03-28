json.extract! informasi_pengumuman, :id, :judul, :isi, :created_at, :updated_at
json.url informasi_pengumuman_url(informasi_pengumuman, format: :json)
