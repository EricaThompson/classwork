class ApplicationController < ActionController::Base
    #CHLLLR

    #logout uses the method current_user 
    #application controller deals with sessions tokens so that the current_user method needs to find by the session token 
    #current user needs to be an instance variable 
    #we can only use logged_in? when trying to verfiy login status bc it's a boolean, ie we canot use logout!


    helper_method :logged_in?

    def current_user 
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def logged_in?
        !!current_user
    end
    
    def login!(user)
        @current_user = user
        session[:session_token] = user.reset_session_token!
    end

    def logout!
        #method current_user
        current_user.reset_session_token! if logged_in?
        session[:session_token] = nil
        @current_user = nil
    end

    def require_logged_in
        redirect_to new_session_url unless logged_in?
    end

    def is_moderator?
        sub = Sub.find_by(id: params[:id])
        current_user.id == sub.moderator_id
    end
    
    def require_moderator_status 
        redirect_to sub_url unless is_moderator?
    end



end
