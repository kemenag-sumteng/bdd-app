class LaporanPenyuluhAgamaKatolik < ApplicationRecord
	validates_length_of :judul, minimum: 5, too_short: 'Judul laporan penyuluh terlalu pendek, minimal 5 karakter!'
end
