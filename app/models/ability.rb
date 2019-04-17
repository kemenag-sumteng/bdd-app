# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(pemakai)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

    can :access, :rails_admin   # grant access to rails_admin
    can :read, :dashboard       # grant access to the dashboard

    # Alias setup
    alias_action :create, :read, :update, :destroy, to: :crud

    # Ability for everyone
    pemakai ||= Pemakai.new # in case of guest
    can :read, [DataKeagamaanKatolik, DataPendidikanAgamaKatolik, GaleriFoto, GaleriVideo, InformasiBeritaTerkini, InformasiPengumuman]

    if pemakai.has_role?(:administrator)
      can :crud, :all
    elsif pemakai.has_role?(:guru_pendakat)
      can :crud, LaporanGuruAgamaKatolik
    elsif pemakai.has_role?(:pegawai_pendakat)
      can :crud, [DataPendidikanAgamaKatolik, GaleriFoto, GaleriVideo, InformasiBeritaTerkini, InformasiPengumuman, LaporanKinerjaPegawaiBimkatSumteng]
    elsif pemakai.has_role?(:penyelenggara_pendakat)
      can :crud, [DataPendidikanAgamaKatolik, GaleriFoto, GaleriVideo, InformasiBeritaTerkini, InformasiPengumuman, LaporanKinerjaPegawaiBimkatSumteng]
    elsif pemakai.has_role?(:penyuluh_urakat)
      can :crud, LaporanPenyuluhAgamaKatolik
    elsif pemakai.has_role?(:pegawai_urakat)
      can :crud, [DataPendidikanAgamaKatolik, GaleriFoto, GaleriVideo, InformasiBeritaTerkini, InformasiPengumuman, LaporanKinerjaPegawaiBimkatSumteng]
    elsif pemakai.has_role?(:kasie_urakat)
      can :crud, [DataPendidikanAgamaKatolik, GaleriFoto, GaleriVideo, InformasiBeritaTerkini, InformasiPengumuman, LaporanKinerjaPegawaiBimkatSumteng]
    end
  end
end
