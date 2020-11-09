class UsersController < ApplicationController

    #when we create, we don't need to save! but we will need to the user model when we save self 
    
    def new 
        render :new
    end

    def create 
        @user = User.create(user_params)
        if @user.save
            login!(@user)
            render :show
        else
            flash.now[:errors] = @user.errors.full_messages 
            render :new 
        end
    end

    def index 
        @users = User.all 
        render :index
    end

    def show
        @user = User.find_by(id: params[:id])
        redirect_to user_url(@user)
    end

    private 
    def user_params
        self.params.require(:user).permit(:username, :password)
    end
end
