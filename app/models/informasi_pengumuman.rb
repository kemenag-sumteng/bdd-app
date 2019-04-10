class InformasiPengumuman < ApplicationRecord
	belongs_to :pemakai
	validates_length_of :judul, minimum: 5, too_short: 'Judul pengumuman terlalu pendek, minimal 5 karakter!'
	validates_length_of :isi, minimum: 5, too_short: 'Isi pengumuman terlalu pendek, buatlah isi pengumuman yang singkat dan jelas.'
end
