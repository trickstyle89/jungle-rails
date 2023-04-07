module SessionsHelper
    def logged_in?
      session[:user_id].present?
    end
  
    def logout_button
      link_to "Logout", logout_path, method: :delete, class: "btn btn-primary me-2" if logged_in?
    end
  
    def signup_button
      link_to "Sign up", new_user_path, class: "btn btn-primary me-2 " unless logged_in?
    end
  
    def login_button
      link_to "Login", new_session_path, class: "btn btn-primary me-2" unless logged_in?
    end
  end