class SignupForm < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  def headers
    {
      :subject => "Someone signed up!!!! #{email}",
      :to => "jesse@theironyard.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
