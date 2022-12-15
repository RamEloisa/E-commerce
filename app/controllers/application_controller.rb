class ApplicationController < ActionController::Base
  before_action :current_user 
  before_action :protect_pages
    
    private
    def current_user
        Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def protect_pages
        redirect_to new_session_path unless Current.user
    end

    def authorize! (item)
        is_allowed = item.user_id == Current.user.id
        redirect_to item_path unless is_allowed
    end
end
