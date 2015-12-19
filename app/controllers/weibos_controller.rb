class WeibosController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@weibo = @user.weibos.create(weibo_params)
		redirect_to user_path(@user)
	end

	private
		def weibo_params
			params.require(:weibo).permit(:text)
		end
end
