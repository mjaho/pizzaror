class FavoritepizzasController < ApplicationController
  before_action :set_favoritepizza, only: [:show, :edit, :update, :destroy]

  # GET /favoritepizzas
  # GET /favoritepizzas.json
  def index
    @favoritepizzas = Favoritepizza.all
  end

  # GET /favoritepizzas/1
  # GET /favoritepizzas/1.json
  def show
  end

  # GET /favoritepizzas/new
  def new
    @favoritepizza = Favoritepizza.new
  end

  # GET /favoritepizzas/1/edit
  def edit
  end

  # POST /favoritepizzas
  # POST /favoritepizzas.json
  def create
    @favoritepizza = Favoritepizza.new(favoritepizza_params)

    respond_to do |format|
      if @favoritepizza.save
        format.html { redirect_to @favoritepizza, notice: 'Favoritepizza was successfully created.' }
        format.json { render action: 'show', status: :created, location: @favoritepizza }
      else
        format.html { render action: 'new' }
        format.json { render json: @favoritepizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favoritepizzas/1
  # PATCH/PUT /favoritepizzas/1.json
  def update
    respond_to do |format|
      if @favoritepizza.update(favoritepizza_params)
        format.html { redirect_to @favoritepizza, notice: 'Favoritepizza was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @favoritepizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favoritepizzas/1
  # DELETE /favoritepizzas/1.json
  def destroy
    @favoritepizza.destroy
    respond_to do |format|
      format.html { redirect_to favoritepizzas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favoritepizza
      @favoritepizza = Favoritepizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favoritepizza_params
      params.require(:favoritepizza).permit(:user_id, :pizza_id)
    end
end
