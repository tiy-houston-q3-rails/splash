class NotifyMePreview < ActionMailer::Preview

  def notification
    NotifyMe.notification("jwo", "jesse@example.com")
  end
end
