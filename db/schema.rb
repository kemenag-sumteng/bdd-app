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

ActiveRecord::Schema.define(version: 2019_03_31_110341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_keagamaan_katolik", force: :cascade do |t|
    t.string "judul"
    t.text "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_pendidikan_agama_katolik", force: :cascade do |t|
    t.string "judul"
    t.text "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galeri_foto", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.string "berkas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galeri_video", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.string "berkas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informasi_berita_terkini", force: :cascade do |t|
    t.string "judul"
    t.text "isi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "lampiran"
  end

  create_table "informasi_pengumuman", force: :cascade do |t|
    t.string "judul"
    t.text "isi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "lampiran"
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

  create_table "laporan_kinerja_pegawai_bimkat_sumteng", force: :cascade do |t|
    t.string "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "judul"
    t.string "nama_pegawai"
  end

  create_table "laporan_penyuluh_agama_katolik", force: :cascade do |t|
    t.text "tautan"
    t.string "nama_penyuluh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "judul"
  end

  add_foreign_key "lampiran", "informasi_berita_terkini"
  add_foreign_key "lampiran", "informasi_pengumuman"
end
