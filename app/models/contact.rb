class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :prenom,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :societe,      :validate => true
  attribute :date,      :validate => true
  attribute :type,      :validate => true
  attribute :nombre,      :validate => true
  attribute :budget,      :validate => true
  attribute :message,     :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "gh.chavanne@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

