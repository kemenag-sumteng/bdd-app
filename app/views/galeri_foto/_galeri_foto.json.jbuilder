json.extract! galeri_foto, :id, :judul, :keterangan, :berkas, :created_at, :updated_at
json.url galeri_foto_url(galeri_foto, format: :json)
