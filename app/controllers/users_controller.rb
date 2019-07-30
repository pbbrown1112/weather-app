  class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :define_current_user, only: [ :authenticate, :create ]

    # GET /users
    def index
      users = User.all
      render json: users
    end

    # GET /users/1
    def show
    end

    # GET /users/new
    def new
      user = User.new
    end

    # GET /users/1/edit
    def edit
    end

    def authenticate
      # Find the user by looking for the entered username in Users
      user = User.find_by(username: params[:username])
      # Check if the password they wrote is correct
      if user != nil && user.authenticate(params[:password])
        render json: user, methods: [ :auth_token ]
      else
        render json: {error: true, message: 'Login Failed' }
      end

    end

    # POST /users
    def create
      user = User.create(user_params)
      # byebug # user.errors.full_messages
      render json: user

    end

    # Create City for User

    def create_city
      user = User.find_by(username: params[:username])
      City.create(name: params[:name], country: params[:country])
      
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:username, :hometown_city, :hometown_country, :email, :password)
    end

    # PATCH/PUT /users/1
    def update
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.'
      else
        render json: @user
      end
    end

    # DELETE /users/1
    def destroy
      @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      

      

  end