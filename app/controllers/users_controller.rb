class UsersController < ApplicationController

    def new
        user = User.new
        render json: user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            # log user in
           session[:user_id] = @user.id
           json render: @user
        else
            render json: {message: "Something is wrong."}        
        end
    end

    def show
        @user = User.all.find(params[:id])
        render json: @user
    end

    private
    def user_params
        params.require(:user).permit(
            :username,
            :email,
            :password,
            :password_confirmation
        )
    end
end
