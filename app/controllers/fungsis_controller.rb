class FungsisController < ApplicationController
  before_action :set_fungsi, only: [:show, :edit, :update, :destroy]

  # GET /fungsis
  # GET /fungsis.json
  def index
    @fungsis = Fungsi.all
  end

  # GET /fungsis/1
  # GET /fungsis/1.json
  def show
  end

  # GET /fungsis/new
  def new
    @fungsi = Fungsi.new
  end

  # GET /fungsis/1/edit
  def edit
  end

  # POST /fungsis
  # POST /fungsis.json
  def create
    @fungsi = Fungsi.new(fungsi_params)

    respond_to do |format|
      if @fungsi.save
        format.html { redirect_to @fungsi, notice: 'Fungsi was successfully created.' }
        format.json { render :show, status: :created, location: @fungsi }
      else
        format.html { render :new }
        format.json { render json: @fungsi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fungsis/1
  # PATCH/PUT /fungsis/1.json
  def update
    respond_to do |format|
      if @fungsi.update(fungsi_params)
        format.html { redirect_to @fungsi, notice: 'Fungsi was successfully updated.' }
        format.json { render :show, status: :ok, location: @fungsi }
      else
        format.html { render :edit }
        format.json { render json: @fungsi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fungsis/1
  # DELETE /fungsis/1.json
  def destroy
    @fungsi.destroy
    respond_to do |format|
      format.html { redirect_to fungsis_url, notice: 'Fungsi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fungsi
      @fungsi = Fungsi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fungsi_params
      params.require(:fungsi).permit(:nama, :string)
    end
end
