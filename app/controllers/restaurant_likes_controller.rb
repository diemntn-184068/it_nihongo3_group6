class RestaurantLikesController < ApplicationController
  before_action :set_restaurant_like, only: %i[ show edit update destroy ]

  # GET /restaurant_likes or /restaurant_likes.json
  def index
    @restaurant_likes = RestaurantLike.all
  end

  # GET /restaurant_likes/1 or /restaurant_likes/1.json
  def show
  end

  # GET /restaurant_likes/new
  def new
    @restaurant_like = RestaurantLike.new
  end

  # GET /restaurant_likes/1/edit
  def edit
  end

  # POST /restaurant_likes or /restaurant_likes.json
  def create
    @restaurant_like = RestaurantLike.new(restaurant_like_params)
    @restaurant_like.user_id = current_user.id
    respond_to do |format|
      if @restaurant_like.save
        url = "/restaurants/" + @restaurant_like.restaurant_id.to_s
        format.html { redirect_to url, notice: "Restaurant like was successfully created." }
        format.json { render :show, status: :created, location: @restaurant_like }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_likes/1 or /restaurant_likes/1.json
  def update
    respond_to do |format|
      if @restaurant_like.update(restaurant_like_params)
        format.html { redirect_to @restaurant_like, notice: "Restaurant like was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant_like }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_likes/1 or /restaurant_likes/1.json
  def destroy
    @restaurant_like.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_likes_url, notice: "Restaurant like was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_like
      #@restaurant_like = RestaurantLike.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_like_params
      params.require(:restaurant_like).permit(:user_id, :restaurant_id, :like)
    end
end
