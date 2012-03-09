class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  def activation_needed_email(user)
    @user = user
		@url = "http://oak-pm.dev/users/#{user.activation_token}/activate"
		mail to: user.email, subject: "Welcome to Oak Project Management"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  def activation_success_email(user)
    @user = user
		@url = "http://oak-pm.dev/login"
		mail to: user.email, subject: "Your account is now activated"
  end
	
	def reset_password_email(user)
    @user = user
		@url = "http://oak-pm.dev/users/#{user.reset_password_token}/reset"
		mail to: user.email, subject: "Welcome to Oak Project Management"
	end

end
