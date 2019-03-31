class InformasiBeritaTerkini < ApplicationRecord
	validates_length_of :judul, minimum: 5, too_short: 'Judul berita terlalu pendek, minimal 5 karakter!'
	validates_length_of :isi, minimum: 5, too_short: 'Isi berita terlalu pendek, buatlah isi berita dengan berpedoman pada 5W + 1 H.'
end
