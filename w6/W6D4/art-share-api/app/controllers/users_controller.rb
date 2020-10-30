class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
        # render plain: "I'm in the index action!"
    end

    def create
    
        user = User.new(user_params)
        #strong params / not blind mass assignment
        # replace the `user_attributes_here` with the actual attribute keys
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: 422
        end
        # render json: user
        # render json: params
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        # name: params[:name], :email => params[:email]
        # user.update(name: params[:name])
        #name
        #
# user = User.find_by(name: 'David')
# user.update(name: 'Dave')
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        redirect_to users_url
    end 

    private 
    def user_params
        params.require(:user).permit(:name,:email)
    end
    #user[name]


end

#{"fav_food":"pizza","controller":"users","action":"create"}