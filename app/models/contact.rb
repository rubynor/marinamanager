class Contact < MailForm::Base
  attribute :navn,      :validate => true
  attribute :epost,     :validate => /\A([\w.%+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :beskjed
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "joachimsolstrom@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
