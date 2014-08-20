class NotifyMe < ActionMailer::Base
  default from: "robot@cook.ie"

  def notification(name, email)
    @name = name
    @email = email

    mail(to: 'jesse@theironyard.com', subject: "Notify me! #{@email}")
  end
end
