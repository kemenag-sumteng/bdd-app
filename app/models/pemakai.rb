class Pemakai < ApplicationRecord
  rolify :role_cname => 'Fungsi'
  has_many :data_keagamaan_katolik
  has_many :data_pendidikan_agama_katolik
  has_many :galeri_foto
  has_many :galeri_video
  has_many :informasi_berita_terkini
  has_many :informasi_pengumuman
  has_many :laporan_kinerja_pegawai_bimkat_sumteng
  has_many :laporan_penyuluh_agama_katolik
  has_many :laporan_guru_agama_katolik
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :penugasan_fungsi_standar

  def penugasan_fungsi_standar
    self.add_role(:pemirsa) if self.roles.blank?
  end
end
