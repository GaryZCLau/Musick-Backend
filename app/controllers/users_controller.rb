class UsersController < ApplicationController
  before_action :authorized, only: [:stay_logged_in]

    def index
        @users = User.all
        render json: @users
    end


    def create
      @user = User.create(params.permit(:name, :password, :image, :status))
      if @user.valid?
        wristband = encode_token({user_id: @user.id})
        render json: {
          user: UserSerializer.new(@user),
          token: wristband
        }
      else
        render json: {message: "Failed to create a new user"}, status: 403
      end
    end
  
    def login
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        wristband = encode_token({user_id: @user.id})
        render json: {
          user: UserSerializer.new(@user),
          token: wristband
        }
      else
        render json: {message: "Incorrect username or password"}
      end
    end
  
    def stay_logged_in
      # @user comes from the before_action
      wristband = encode_token({user_id: @user.id})
      render json: {
        user: UserSerializer.new(@user),
        token: wristband
      }
    end
  
    private
  
    def user_params
      params.permit(:name, :password)
    end
  
end
