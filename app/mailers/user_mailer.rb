class UserMailer < ApplicationMailer

	def wishlist_email
		# byebug
		@user = params[:user]
		
		mail(to: @user.email, subject: "Your wishlist is available now")
	end
end
