class InformasiBeritaTerkiniController < ApplicationController
  before_action :set_informasi_berita_terkini, only: [:show, :edit, :update, :destroy]

  # GET /informasi_berita_terkini
  # GET /informasi_berita_terkini.json
  def index
    @informasi_berita_terkini = InformasiBeritaTerkini.all
  end

  # GET /informasi_berita_terkini/1
  # GET /informasi_berita_terkini/1.json
  def show
  end

  # GET /informasi_berita_terkini/new
  def new
    @informasi_berita_terkini = InformasiBeritaTerkini.new
  end

  # GET /informasi_berita_terkini/1/edit
  def edit
  end

  # POST /informasi_berita_terkini
  # POST /informasi_berita_terkini.json
  def create
    @informasi_berita_terkini = InformasiBeritaTerkini.new(informasi_berita_terkini_params)

    respond_to do |format|
      if @informasi_berita_terkini.save
        format.html { redirect_to @informasi_berita_terkini, notice: 'Informasi berita terkini was successfully created.' }
        format.json { render :show, status: :created, location: @informasi_berita_terkini }
      else
        format.html { render :new }
        format.json { render json: @informasi_berita_terkini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informasi_berita_terkini/1
  # PATCH/PUT /informasi_berita_terkini/1.json
  def update
    respond_to do |format|
      if @informasi_berita_terkini.update(informasi_berita_terkini_params)
        format.html { redirect_to @informasi_berita_terkini, notice: 'Informasi berita terkini was successfully updated.' }
        format.json { render :show, status: :ok, location: @informasi_berita_terkini }
      else
        format.html { render :edit }
        format.json { render json: @informasi_berita_terkini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informasi_berita_terkini/1
  # DELETE /informasi_berita_terkini/1.json
  def destroy
    @informasi_berita_terkini.destroy
    respond_to do |format|
      format.html { redirect_to informasi_berita_terkini_index_url, notice: 'Informasi berita terkini was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informasi_berita_terkini
      @informasi_berita_terkini = InformasiBeritaTerkini.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informasi_berita_terkini_params
      params.require(:informasi_berita_terkini).permit(:judul, :isi)
    end
end
