class CategoriaController < ApplicationController
  before_action :set_categoria, only: %i[ show edit update destroy ]

  # GET /categoria or /categoria.json
  def index
    @categoria = Categoria.all
  end

  # GET /categoria/1 or /categoria/1.json
  def show
  end

  # GET /categoria/new
  def new
    @categoria = Categoria.new  # Cambia Categorium.rb.new a Categoria.new
  end

  # GET /categoria/1/edit
  def edit
  end

  # POST /categoria or /categoria.json
  def create
    @categoria = Categoria.new(categoria_params)  # Cambia Categorium a Categoria

    respond_to do |format|
      if @categoria.save
        format.html { redirect_to @categoria, notice: "Categoría fue creada con éxito." }
        format.json { render :show, status: :created, location: @categoria }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria/1 or /categoria/1.json
  def update
    respond_to do |format|
      if @categoria.update(categoria_params)  # Cambia Categorium a Categoria
        format.html { redirect_to @categoria, notice: "Categoría fue actualizada con éxito." }
        format.json { render :show, status: :ok, location: @categoria }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria/1 or /categoria/1.json
  def destroy
    @categoria.destroy!  # Cambia Categorium a Categoria

    respond_to do |format|
      format.html { redirect_to categoria_path, status: :see_other, notice: "Categoría fue destruida con éxito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria  # Cambia set_categorium a set_categoria
      @categoria = Categoria.find(params[:id])  # Cambia Categorium a Categoria
    end

    # Only allow a list of trusted parameters through.
    def categoria_params  # Cambia categorium_params a categoria_params
      params.require(:categoria).permit(:nombre, :descripcion, :fecha, :color, :icono, :genero)
    end
end
