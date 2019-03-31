class GaleriFoto < ApplicationRecord
	validates_length_of :judul, minimum: 5, too_short: 'Judul terlalu pendek, minimal 5 karakter!'
	validates_length_of :keterangan, minimum: 5, too_short: 'Keterangan terlalu pendek, buatlah keterangan yang mendeskripsikan Foto dengan baik.'
end
