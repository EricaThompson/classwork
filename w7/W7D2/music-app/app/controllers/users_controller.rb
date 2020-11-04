class UsersController < ApplicationController
    def index
        render :show
    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            login(@user)
            flash[:errors] = @user.errors.full_messages
            render :show
        else
            flash[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def show
        # @user = User.find_by(email: user_params[:email])
        @user = 'user email should be here'
        return @user
    end

    private
    def user_params
        self.params.require(:user).permit(:email, :password)
    end
end