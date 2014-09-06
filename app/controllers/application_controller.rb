class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

=begin
  def facebook_auth
    if user_signed_in? && current_user.provider != 'facebook'
      sign_out(current_user)
    end
  end
=end

end
