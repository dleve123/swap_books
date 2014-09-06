class UsersController < ApplicationController

  #before_action :facebook_auth
=begin
  def create
  	
    @user = User.new(user_params)
    #pass = SecureRandom.hex
    #@user.password = pass
    #@user.password_confirmation = pass

		respond_to do |format|
      if @user.save
        @user.send_confirmation_instructions
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        #format.js 
      else
        format.html { redirect_to root_path, notice: 'User creation failed.' }
        #format.js
      end
    end

  end
=end

  private

  	def user_params
  		params.require(:user).permit(:email)
  	end

end
