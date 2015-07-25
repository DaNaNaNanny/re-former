class UsersController < ApplicationController
	def create
      # Example 2 @user = User.new(username: params[:username], email: params[:email], password: params[:password])
		# Example 1 @user = User.new(user_params)
		@user = User.new(username: params[:user][:username], email: params[:user][:email], password: params[:user][:password])
      if @user.save
        redirect_to new_user_path
      else
        render :new
      end
    end
    
    def new
    	@user = User.new #Example 3
    end
    
    private
    	# Example 1 def user_params
    	#	params.require(:user).permit(:username, :email, :password)
    	#end

end
