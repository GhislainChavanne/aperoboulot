class Contact < MailForm::Base
  include MailForm::Delivery
  attribute :nom,      :validate => true
  attribute :prenom,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :societe,      :validate => true
  attribute :date,      :validate => true
  attribute :type,      :validate => true
  attribute :nombre,      :validate => true
  attribute :budget
  attribute :message,     :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Demande" %("#{type}"),
      :to => "charlotte@aperoboulot.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end

