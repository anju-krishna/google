class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
  def after_sign_in_path_for(resource)
    home_index_path
  end
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

end


