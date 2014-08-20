class PagesController < ApplicationController
  def index
    @signup_form = SignupForm.new
  end
end
