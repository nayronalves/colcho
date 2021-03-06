class SignupMailer < ActionMailer::Base
	default from: 'no-reply@cars.net'
	def confirm_email(user)
		@user = user
		@confirmation_link = confirmation_url ({
			token: @user.confirmation_token})
		mail({
			to: user.email,
			bcc: ['sign ups <signups@cars.net>'],
			subject: ('Cars.net - confirme seu email')
			})
	end
end