json.extract! galeri_video, :id, :judul, :keterangan, :berkas, :created_at, :updated_at
json.url galeri_video_url(galeri_video, format: :json)
