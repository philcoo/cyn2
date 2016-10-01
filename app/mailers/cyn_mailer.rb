class CynMailer < ActionMailer::Base
  default from: "cyn.c.cake@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome')
  end

end
