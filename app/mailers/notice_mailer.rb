class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_insta.subject
  #
  def sendmail_insta(instalike)
    @instalike = instalike
    mail to: "tomomiik0210@gmail.com",
         subject: '【Insta】写真が投稿されました'
  end
end
