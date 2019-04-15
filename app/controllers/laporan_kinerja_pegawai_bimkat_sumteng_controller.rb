class LaporanKinerjaPegawaiBimkatSumtengController < ApplicationController
  load_and_authorize_resource
  skip_authorize_resource :only => :index
  before_action :set_laporan_kinerja_pegawai_bimkat_sumteng, only: [:show, :edit, :update, :destroy]

  # GET /laporan_kinerja_pegawai_bimkat_sumteng
  # GET /laporan_kinerja_pegawai_bimkat_sumteng.json
  def index
    @laporan_kinerja_pegawai_bimkat_sumteng = LaporanKinerjaPegawaiBimkatSumteng.all
  end

  # GET /laporan_kinerja_pegawai_bimkat_sumteng/1
  # GET /laporan_kinerja_pegawai_bimkat_sumteng/1.json
  def show
  end

  # GET /laporan_kinerja_pegawai_bimkat_sumteng/new
  def new
    @laporan_kinerja_pegawai_bimkat_sumteng = LaporanKinerjaPegawaiBimkatSumteng.new
  end

  # GET /laporan_kinerja_pegawai_bimkat_sumteng/1/edit
  def edit
  end

  # POST /laporan_kinerja_pegawai_bimkat_sumteng
  # POST /laporan_kinerja_pegawai_bimkat_sumteng.json
  def create
    @laporan_kinerja_pegawai_bimkat_sumteng = LaporanKinerjaPegawaiBimkatSumteng.new(laporan_kinerja_pegawai_bimkat_sumteng_params)

    respond_to do |format|
      if @laporan_kinerja_pegawai_bimkat_sumteng.save
        format.html { redirect_to @laporan_kinerja_pegawai_bimkat_sumteng, notice: 'Laporan kinerja pegawai bimkat sumteng telah berhasil dibuat.' }
        format.json { render :show, status: :created, location: @laporan_kinerja_pegawai_bimkat_sumteng }
      else
        format.html { render :new }
        format.json { render json: @laporan_kinerja_pegawai_bimkat_sumteng.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laporan_kinerja_pegawai_bimkat_sumteng/1
  # PATCH/PUT /laporan_kinerja_pegawai_bimkat_sumteng/1.json
  def update
    respond_to do |format|
      if @laporan_kinerja_pegawai_bimkat_sumteng.update(laporan_kinerja_pegawai_bimkat_sumteng_params)
        format.html { redirect_to @laporan_kinerja_pegawai_bimkat_sumteng, notice: 'Laporan kinerja pegawai bimkat sumteng was successfully updated.' }
        format.json { render :show, status: :ok, location: @laporan_kinerja_pegawai_bimkat_sumteng }
      else
        format.html { render :edit }
        format.json { render json: @laporan_kinerja_pegawai_bimkat_sumteng.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laporan_kinerja_pegawai_bimkat_sumteng/1
  # DELETE /laporan_kinerja_pegawai_bimkat_sumteng/1.json
  def destroy
    @laporan_kinerja_pegawai_bimkat_sumteng.destroy
    respond_to do |format|
      format.html { redirect_to laporan_kinerja_pegawai_bimkat_sumteng_index_url, notice: 'Laporan kinerja pegawai bimkat sumteng telah berhasil dihapus.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laporan_kinerja_pegawai_bimkat_sumteng
      @laporan_kinerja_pegawai_bimkat_sumteng = LaporanKinerjaPegawaiBimkatSumteng.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laporan_kinerja_pegawai_bimkat_sumteng_params
      params.require(:laporan_kinerja_pegawai_bimkat_sumteng).permit(:bulan, :tahun, :tautan)
    end
end
