class SessionsController < ApplicationController

    # create uses find_by_credential method from the users model
    # create needs an instance of the user to be able to access that specific user's username and password
    
    # we need a before action for destroy to make sure we are logged in
    # we cannot use user's error, we need to write our own session errors 
    # sessions new only renders a view 
    # create needs an if else 
    # follow specs if they want to redirect 

    before_action :logged_in?, only:[:destroy]
    
    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:username],params[:user][:password])
        if @user 
            login!(@user)
            
        else
            flash.now[:errors] = ['Invalid Credentials']
            render :new 
        end
    end

    def destroy  
        logout!
        redirect_to new_session_url
    end

end