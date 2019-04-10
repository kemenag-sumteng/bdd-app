# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts ""
puts "Seed database"
puts ""
Fungsi.create!([
	{nama: "Pegawai Pendakat"},
	{nama: "Guru Pendakat"},
	{nama: "Penyelenggara Pendakat"},
	{nama: "Pegawai Pendakat"},
	{nama: "Penyuluh Pendakat"},
	{nama: "Kasie Pendakat"},
	{nama: "Pengunjung"},
	{nama: "Admin"}
])

puts "Berhasil membuat #{Fungsi.count} fungsi"

Pemakai.create!([
	{email: "pegawai_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi_id: 1},
	{email: "guru_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi_id: 2},
	{email: "penyelenggara_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi_id: 3},
	{email: "pegawai_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi_id: 4},
	{email: "penyuluh_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi_id: 5},
	{email: "kasie_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi_id: 6},
	{email: "admin@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi_id: 8}
])

puts "Berhasil membuat #{Pemakai.count} pemakai"



puts ""
puts "Proses seed database selesai"