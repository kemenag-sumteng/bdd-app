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
puts ""
puts ""
puts "Membuat Pemakai"
Pemakai.create!([
	{email: "pegawai_pendakat@kemenagsumteng.go.id", nama: "Pegawai Pendakat", password: "qwerty", password_confirmation: "qwerty"},
	{email: "guru_pendakat@kemenagsumteng.go.id", nama: "Guru Pendakat", password: "qwerty", password_confirmation: "qwerty"},
	{email: "penyelenggara_pendakat@kemenagsumteng.go.id", nama: "Penyelenggara Pendakat", password: "qwerty", password_confirmation: "qwerty"},
	{email: "pegawai_urakat@kemenagsumteng.go.id", nama: "Pegawai Urakat", password: "qwerty", password_confirmation: "qwerty"},
	{email: "penyuluh_urakat@kemenagsumteng.go.id", nama: "Penyuluh Urakat", password: "qwerty", password_confirmation: "qwerty"},
	{email: "kasie_urakat@kemenagsumteng.go.id", nama: "Kasie Urakat", password: "qwerty", password_confirmation: "qwerty"},
	{email: "administrator@kemenagsumteng.go.id", nama: "Administrator", password: "qwerty", password_confirmation: "qwerty"}
])
puts ""
puts "Berhasil membuat #{Pemakai.count} pemakai"
puts ""
puts ""
puts ""
puts "Membuat Penugasan Fungsi Pada Pemakai"
pemakai = Pemakai.find(1)
pemakai.add_role :pegawai_pendakat
pemakai = Pemakai.find(2)
pemakai.add_role :guru_pendakat
pemakai = Pemakai.find(3)
pemakai.add_role :penyelenggara_pendakat
pemakai = Pemakai.find(4)
pemakai.add_role :pegawai_urakat
pemakai = Pemakai.find(5)
pemakai.add_role :penyuluh_urakat
pemakai = Pemakai.find(6)
pemakai.add_role :kasie_urakat
pemakai = Pemakai.find(7)
pemakai.add_role :administrator
puts ""
puts "Berhasil membuat #{Fungsi.count} Fungsi"
puts ""
puts ""
puts ""
puts "Proses seed database selesai"
