  class UserCitiesController < ApplicationController
    before_action :set_user_city, only: [:show, :edit, :update, :destroy]

    # GET /user_cities
    def index
      @user_cities = UserCity.all
    end

    # GET /user_cities/1
    def show
    end

    # GET /user_cities/new
    def new
      @user_city = UserCity.new
    end

    # GET /user_cities/1/edit
    def edit
    end

    # POST /user_cities
    def create
      @user_city = UserCity.new(user_city_params)

      if @user_city.save
        redirect_to @user_city, notice: 'User city was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /user_cities/1
    def update
      if @user_city.update(user_city_params)
        redirect_to @user_city, notice: 'User city was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /user_cities/1
    def destroy
      @user_city.destroy
      redirect_to user_cities_url, notice: 'User city was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user_city
        @user_city = UserCity.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def user_city_params
        params.fetch(:user_city, {})
      end
  end

