class OmniauthCallbacksController < ApplicationController
  def stripe_connect
    @user = current_user
    if @user.update_attributes({
      provider: request.env["omniauth.auth"].provider,
      uid: request.env["omniauth.auth"].uid,
      access_code: request.env["omniauth.auth"].credentials.token,
      publishable_key: request.env["omniauth.auth"].info.stripe_publishable_key
    })
      # anything else you need to do in response..
      sign_in_and_redirect @user, :event => :authentication
      flash[:notice] = "Signed in with #{current_user.provider.to_s.titleize} successfully."
    else
      session["devise.stripe_connect_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
