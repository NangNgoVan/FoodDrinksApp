class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
		@user = User.find_by id: params[:id]
		return if @user
		redirect_to root_path
	end
end