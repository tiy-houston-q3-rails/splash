class NotificationsController < ApplicationController
  def create_with_mailer
    name = params[:name]
    email = params[:email]

    # create a mailer object
    # deliver the mail
    NotifyMe.notification(name, email).deliver


    # redirect to homepage
    redirect_to root_path
  end

  def create
    @signup_form = SignupForm.new(params.require(:signup_form).permit([:name, :email]))
    if @signup_form.valid?
      @signup_form.deliver
      redirect_to root_path
    else
      render "pages/index"
    end

  end
end
