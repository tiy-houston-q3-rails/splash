class NotificationsController < ApplicationController
  def create
    name = params[:name]
    email = params[:email]

    # create a mailer object
    # deliver the mail
    NotifyMe.notification(name, email).deliver


    # redirect to homepage
    redirect_to root_path
  end
end
