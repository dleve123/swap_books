class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth(request.env["omniauth.auth"])

    if user.persisted?
      flash.notice = "Signed in!"
      sign_in_and_redirect user
    else
      flash.notice = "Facebook auth failed"
      session["devise.user_attributes"] = user.attributes
      redirect_to root_url
    end
  end

  alias_method :facebook, :all
end
