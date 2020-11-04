class ApplicationController < ActionController::Base
    protect_from_forgery #with: :exception
    # skip_before_action :verify_authenticity_token
    helper_method :current_user, :logged_in?, :logout!, :login

=begin    
    #C current_user
    # R require_logged_in
    # L login(user)
    # L logged_in?
    # L logout!


    def current_user
        current_user ||= User.find_by(session_token: session[:session_token])
    end

    def require_logged_in
        redirect_to new_session_url unless logged_in?
    end

    def login(user)
        session[:session_token] = user.reset_session_token
    end

    def logged_in?
        !!current_user
    end

    def logout!
        current_user.reset_session_token! if logged_in?

    end

=end

    # C= current_user
    # R= require logged in
    # L= login(user)
    # L= logged_in?
    # L= logout!
    
    def current_user
        #! where is session token being set?
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def require_logged_in
        redirect_to new_session_url unless logged_in?
    end
    
    def login(user)
        session[:session_token] = user.reset_session_token!
    end

    def logged_in?
        !!current_user
    end

    def logout!
        # if the current user is logged in reset their session token
        current_user.reset_session_token! if logged_in?
        #! session_token to nil?
        session[:session_token] = nil
        @current_user = nil
    end

end
