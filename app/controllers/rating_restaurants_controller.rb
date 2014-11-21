class RatingRestaurantsController < ApplicationController
  before_action :set_rating_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /rating_restaurants
  # GET /rating_restaurants.json
  def index
    @rating_restaurants = RatingRestaurant.all
  end

  # GET /rating_restaurants/1
  # GET /rating_restaurants/1.json
  def show
  end

  # GET /rating_restaurants/new
  def new
    @rating_restaurant = RatingRestaurant.new
  end

  # GET /rating_restaurants/1/edit
  def edit
  end

  # POST /rating_restaurants
  # POST /rating_restaurants.json
  def create
    @rating_restaurant = RatingRestaurant.new(rating_restaurant_params)

    respond_to do |format|
      if @rating_restaurant.save
        format.html { redirect_to @rating_restaurant, notice: 'Rating restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @rating_restaurant }
      else
        format.html { render :new }
        format.json { render json: @rating_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rating_restaurants/1
  # PATCH/PUT /rating_restaurants/1.json
  def update
    respond_to do |format|
      if @rating_restaurant.update(rating_restaurant_params)
        format.html { redirect_to @rating_restaurant, notice: 'Rating restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @rating_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @rating_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rating_restaurants/1
  # DELETE /rating_restaurants/1.json
  def destroy
    @rating_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to rating_restaurants_url, notice: 'Rating restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating_restaurant
      @rating_restaurant = RatingRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_restaurant_params
      params.require(:rating_restaurant).permit(:comments, :star)
    end
end
