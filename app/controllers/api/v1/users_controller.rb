class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index
        @users = User.all
           if @users
              render json: {
              users: @users
           }
          else
              render json: {
              status: 500,
              errors: ['no users found']
          }
         end
    end

    def create
        @user = User.new(user_params)
        # binding.pry
            if @user.save
                login!  
                render json: {
                status: :created,
                user: @user
            }
           else 
               render json: {
               status: 500,
               errors: @user.errors.full_messages
           }
           end
     end

    def show
        @user = User.find(params[:id])
            if @user
               render json: {
               user: @user
            }
            else
               render json: {
               status: 500,
               errors: ['user not found']
             }
            end
    end 

    def destroy
        user = User.find(params[:id])
        User.destroy
        render json: {message: 'User profile successfully deleted' }
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation, :contact_preference, :location)
    end

end
