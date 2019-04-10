class LaporanKinerjaPegawaiBimkatSumteng < ApplicationRecord
	belongs_to :pemakai
	validates_length_of :judul, minimum: 5, too_short: 'Judul laporan kinerja terlalu pendek, minimal 5 karakter!'
end
