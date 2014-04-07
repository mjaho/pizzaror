class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]


  before_action only: [:new, :create] do
    to_root_if_not_logged_in
  end

  before_action only: [:destroy, :edit, :update] do
    to_root_if_not_owner_or_admin(@pizza.user.id)
  end

  # GET /pizzas
  # GET /pizzas.json
  def index
    @pizzas = Pizza.all
  end

  # GET /pizzas/1
  # GET /pizzas/1.json
  def show
    @favoritepizza = Favoritepizza.new
    if not (current_user.nil?)
      @favoritepizza.user = current_user
    end
  end

  # GET /pizzas/new
  def new
    @pizza = Pizza.new
    @toppings = Topping.all
  end

  # GET /pizzas/1/edit
  def edit
    @toppings = Topping.all
  end

  # POST /pizzas
  # POST /pizzas.json
  def create
    @pizza = Pizza.new(pizza_params)

    @pizza.user_id = current_user.id

    params[:topping_ids].each do |tid|
      topping = Topping.find_by_id(tid)
      @pizza.toppings << topping
    end

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @pizza, notice: 'Pizza was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pizza }
      else
        format.html { render action: 'new' }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizzas/1
  # PATCH/PUT /pizzas/1.json
  def update
    respond_to do |format|

      @pizza.toppings.each do |t|
        @pizza.toppings.delete(t)
      end

      params[:topping_ids].each do |tid|
        topping = Topping.find_by_id(tid)
        @pizza.toppings << topping
      end

      if @pizza.update(pizza_params)
        format.html { redirect_to @pizza, notice: 'Pizza was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzas/1
  # DELETE /pizzas/1.json
  def destroy
    @pizza.destroy
    respond_to do |format|
      format.html { redirect_to pizzas_url }
      format.json { head :no_content }
    end
  end

  def add_topping
    pizza = Pizza.find params[:pizza_id]
    topping = Topping.find_by params[:topping_id]
    if params[:add == true]
      pizza.toppings << topping
    else
      pizza.toppings - topping
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_params
      params.require(:pizza).permit(:name, :user_id, :description, :topping_ids)
    end
end
