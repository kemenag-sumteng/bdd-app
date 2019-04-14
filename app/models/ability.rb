# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
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

    # Rails Admin setup
    can :access, :rails_admin   # grant access to rails_admin
    can :read, :dashboard       # grant access to the dashboard

    # Alias setup
    alias_action :create, :read, :update, :destroy, to: :crud

    # Ability for everyone
    pemakai ||= Pemakai.new # in case of guest
    can :read, DataKeagamaanKatolik
    can :read, DataPendidikanAgamaKatolik
    can :read, GaleriFoto
    can :read, GaleriVideo
    can :read, InformasiBeritaTerkini
    can :read, InformasiPengumuman

    if pemakai.fungsi? "Administrator"
      can :crud, :all
    elsif pemakai.fungsi? "Guru Pendakat"
      can :crud, LaporanGuruAgamaKatolik
    elsif pemakai.fungsi? "Pegawai Pendakat"
      can :crud, DataPendidikanAgamaKatolik
      can :crud, GaleriFoto
      can :crud, GaleriVideo
      can :crud, InformasiBeritaTerkini
      can :crud, InformasiPengumuman
      can :crud, LaporanKinerjaPegawaiBimkatSumteng
    elsif pemakai.fungsi? "Penyelenggara Pendakat"
      can :crud, DataPendidikanAgamaKatolik
      can :crud, GaleriFoto
      can :crud, GaleriVideo
      can :crud, InformasiBeritaTerkini
      can :crud, InformasiPengumuman
      can :crud, LaporanKinerjaPegawaiBimkatSumteng
    elsif pemakai.fungsi? "Penyuluh Urakat"
      can :crud, LaporanGuruAgamaKatolik
    elsif pemakai.fungsi? "Pegawai Urakat"
      can :crud, DataPendidikanAgamaKatolik
      can :crud, GaleriFoto
      can :crud, GaleriVideo
      can :crud, InformasiBeritaTerkini
      can :crud, InformasiPengumuman
      can :crud, LaporanKinerjaPegawaiBimkatSumteng
    elsif pemakai.fungsi? "Kasie Urakat"
      can :crud, DataPendidikanAgamaKatolik
      can :crud, GaleriFoto
      can :crud, GaleriVideo
      can :crud, InformasiBeritaTerkini
      can :crud, InformasiPengumuman
      can :crud, LaporanKinerjaPegawaiBimkatSumteng
    end


  end
end
