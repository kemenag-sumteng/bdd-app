class DataKeagamaanKatolik < ApplicationRecord
	validates_length_of :judul, minimum: 5, too_short: 'Judul data keagamaan katolik terlalu pendek, minimal 5 karakter!'
	validates_length_of :tautan, minimum: 5, too_short: 'Pastikan Anda telah menyalin File ID pada Google Drive!'
end
