class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def show
    	@user = User.find(params[:id])
 	 end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path, notice:
			"Welcome #{@user.userid} to Electronic Review"
		else
			'render'
		end
	end


	private
	def user_params
		params.require(:user).permit(:userid, :email, :password, :password_confirmation, :id)
	end
end
