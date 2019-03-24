Feature: Halaman Utama
  In order to read the page
  As a viewer
  I want to see the Halaman Utama of my app

	Scenario: View halaman utama
		Given I am on the halaman utama
		When Visit Halaman Utama, I should see "Salve."
		And I can see "Selamat datang di Bimas Katolik Sumba Tengah."
		Then I also see "Untuk memulai, Anda dapat memilih salah satu dari menu yang tersedia."