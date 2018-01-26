class ConfirmationsController < ApplicationController
	def show
		user = User.find_by_confirmation_token(params[:token])
		if user.present?
			user.confirm!
			redirect_to user,
			notice: 'users.confirmations.success'
		else
			redirect_to root_path
		end
	end
end