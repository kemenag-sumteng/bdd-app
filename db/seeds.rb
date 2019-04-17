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

Pemakai.create!([
	{email: "pegawai_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi: "pegawai_pendakat"},
	{email: "guru_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi: "guru_pendakat"},
	{email: "penyelenggara_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi: "penyelenggara_pendakat"},
	{email: "pegawai_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi: "pegawai_urakat"},
	{email: "penyuluh_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi: "penyuluh_urakat"},
	{email: "kasie_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi: "kasie_pendakat"},
	{email: "admin@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty", fungsi: "administrator"}
])

puts "Berhasil membuat #{Pemakai.count} pemakai"



puts ""
puts "Proses seed database selesai"
