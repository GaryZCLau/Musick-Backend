class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def create
        @user = User.create(user_params())
        if @user.valid?
          render json: @user, status: 201
        else
          render json: {message: "Failed to create a new user"}, status: 403
        end
      end
    
    
    
      def login
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
          render json: @user
        else
          render json: {message: "Incorrect name or password"}
        end
      end
    
      
    
      private
    
      def user_params
        params.permit(:name, :password)
      end
      
end
