class PizzatoppingsController < ApplicationController
  before_action :set_pizzatopping, only: [:show, :edit, :update, :destroy]

  # GET /pizzatoppings
  # GET /pizzatoppings.json
  def index
    @pizzatoppings = Pizzatopping.all
  end

  # GET /pizzatoppings/1
  # GET /pizzatoppings/1.json
  def show
  end

  # GET /pizzatoppings/new
  def new
    @pizzatopping = Pizzatopping.new
  end

  # GET /pizzatoppings/1/edit
  def edit
  end

  # POST /pizzatoppings
  # POST /pizzatoppings.json
  def create
    @pizzatopping = Pizzatopping.new(pizzatopping_params)

    respond_to do |format|
      if @pizzatopping.save
        format.html { redirect_to @pizzatopping, notice: 'Pizzatopping was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pizzatopping }
      else
        format.html { render action: 'new' }
        format.json { render json: @pizzatopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizzatoppings/1
  # PATCH/PUT /pizzatoppings/1.json
  def update
    respond_to do |format|
      if @pizzatopping.update(pizzatopping_params)
        format.html { redirect_to @pizzatopping, notice: 'Pizzatopping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pizzatopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzatoppings/1
  # DELETE /pizzatoppings/1.json
  def destroy
    @pizzatopping.destroy
    respond_to do |format|
      format.html { redirect_to pizzatoppings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizzatopping
      @pizzatopping = Pizzatopping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizzatopping_params
      params.require(:pizzatopping).permit(:topping_id, :pizza_id)
    end
end
