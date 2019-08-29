class NoticeMailer < ApplicationMailer

  default from: "noreply@example.com"

  def sendmail_contact(contact)
    @contact = contact
    mail to: "tsubasayoshida0624@gmail.com",
         subject: "お問い合わせが届きました"
  end

end
