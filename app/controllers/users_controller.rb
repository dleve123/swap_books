class UsersController < ApplicationController
=begin
  def create
  	@user = User.new(user_params)

  		if @user.save
  			flash.now[:success] = "Successful add"
  			#@user.send_confirmation_instructions
  		else
  			flash.now[:error] = "Signup failed"
  		end

  end

=end
  private

  	def user_params
  		params.require(:user).permit(:email)

  	end

end
