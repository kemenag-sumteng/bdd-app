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
	{email: "pegawai_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty"},
	{email: "guru_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty"},
	{email: "penyelenggara_pendakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty"},
	{email: "pegawai_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty"},
	{email: "penyuluh_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty"},
	{email: "kasie_urakat@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty"},
	{email: "admin@kemenagsumteng.go.id", password: "qwerty", password_confirmation: "qwerty"}
])

puts "Berhasil membuat #{Pemakai.count} pemakai"



puts ""
puts "Proses seed database selesai"
