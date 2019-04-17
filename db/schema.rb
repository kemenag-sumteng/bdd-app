# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_14_050348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_keagamaan_katolik", force: :cascade do |t|
    t.string "judul"
    t.text "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_data_keagamaan_katolik_on_pemakai_id"
  end

  create_table "data_pendidikan_agama_katolik", force: :cascade do |t|
    t.string "judul"
    t.text "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_data_pendidikan_agama_katolik_on_pemakai_id"
  end

  create_table "galeri_foto", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.string "berkas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_galeri_foto_on_pemakai_id"
  end

  create_table "galeri_video", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.string "berkas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_galeri_video_on_pemakai_id"
  end

  create_table "informasi_berita_terkini", force: :cascade do |t|
    t.string "judul"
    t.text "isi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "lampiran"
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_informasi_berita_terkini_on_pemakai_id"
  end

  create_table "informasi_pengumuman", force: :cascade do |t|
    t.string "judul"
    t.text "isi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "lampiran"
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_informasi_pengumuman_on_pemakai_id"
  end

  create_table "lampiran", force: :cascade do |t|
    t.text "tautan"
    t.bigint "informasi_berita_terkini_id"
    t.bigint "informasi_pengumuman_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["informasi_berita_terkini_id"], name: "index_lampiran_on_informasi_berita_terkini_id"
    t.index ["informasi_pengumuman_id"], name: "index_lampiran_on_informasi_pengumuman_id"
  end

  create_table "laporan_guru_agama_katolik", force: :cascade do |t|
    t.string "tautan"
    t.string "nama_guru"
    t.string "judul"
    t.bigint "pemakai_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pemakai_id"], name: "index_laporan_guru_agama_katolik_on_pemakai_id"
  end

  create_table "laporan_kinerja_pegawai_bimkat_sumteng", force: :cascade do |t|
    t.string "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "judul"
    t.string "nama_pegawai"
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_laporan_kinerja_pegawai_bimkat_sumteng_on_pemakai_id"
  end

  create_table "laporan_penyuluh_agama_katolik", force: :cascade do |t|
    t.text "tautan"
    t.string "nama_penyuluh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "judul"
    t.bigint "pemakai_id"
    t.index ["pemakai_id"], name: "index_laporan_penyuluh_agama_katolik_on_pemakai_id"
  end

  create_table "pemakai", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nama"
    t.bigint "fungsi_id", default: 7
    t.string "fungsi", default: "Pengunjung"
    t.index ["email"], name: "index_pemakai_on_email", unique: true
    t.index ["fungsi_id"], name: "index_pemakai_on_fungsi_id"
    t.index ["reset_password_token"], name: "index_pemakai_on_reset_password_token", unique: true
  end

  add_foreign_key "data_keagamaan_katolik", "pemakai"
  add_foreign_key "data_pendidikan_agama_katolik", "pemakai"
  add_foreign_key "galeri_foto", "pemakai"
  add_foreign_key "galeri_video", "pemakai"
  add_foreign_key "informasi_berita_terkini", "pemakai"
  add_foreign_key "informasi_pengumuman", "pemakai"
  add_foreign_key "lampiran", "informasi_berita_terkini"
  add_foreign_key "lampiran", "informasi_pengumuman"
  add_foreign_key "laporan_guru_agama_katolik", "pemakai"
  add_foreign_key "laporan_kinerja_pegawai_bimkat_sumteng", "pemakai"
  add_foreign_key "laporan_penyuluh_agama_katolik", "pemakai"
end
