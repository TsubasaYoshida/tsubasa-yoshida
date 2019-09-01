class NoticeMailer < ApplicationMailer

  default from: "noreply@example.com"

  def sendmail_contact(contact)
    @contact = contact
    mail to: Rails.application.credentials.admin[:mail_address],
         subject: "お問い合わせが届きました"
  end

end
