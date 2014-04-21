class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate: true

  def headers
    {
      subject: 'My contact form',
      to: ENV['ESPERTU_EMAIL'],
      from: %("#{name}" <#{email}>)
    }
  end
end
