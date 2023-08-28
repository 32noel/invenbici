class PartesController < ApplicationController
  before_action :set_parte, only: %i[ show edit update destroy ]

  # GET /partes or /partes.json
  def index
    @partes = Parte.all
  end

  # GET /partes/1 or /partes/1.json
  def show
    @parte = Parte.find(params[:id])
    @asociaciones = @parte.obtener_colores_y_marcas_asociadas
  end

  # GET /partes/new
  def new
    @parte = Parte.new
  end

  # GET /partes/1/edit
  def edit
  end

  # POST /partes or /partes.json
  def create
    @parte = Parte.new(parte_params)

    respond_to do |format|
      if @parte.save
        format.html { redirect_to parte_url(@parte), notice: "Parte was successfully created." }
        format.json { render :show, status: :created, location: @parte }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partes/1 or /partes/1.json
  def update
    respond_to do |format|
      if @parte.update(parte_params)
        format.html { redirect_to parte_url(@parte), notice: "Parte was successfully updated." }
        format.json { render :show, status: :ok, location: @parte }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partes/1 or /partes/1.json
  def destroy
    @parte.destroy

    respond_to do |format|
      format.html { redirect_to partes_url, notice: "Parte was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte
      @parte = Parte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parte_params
      params.require(:parte).permit(:name, :description, :color_id, :brand_id)
    end
end
