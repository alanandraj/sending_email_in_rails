class ExampleMailer < ActionMailer::Base
  default from: "a.anandraj02@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')

    # mg_client = Mailgun::Client.new ENV['api_key']
    # message_params = {
    #     :from => ENV['gmail_username'],
    #     :to => @user.email,
    #     :subject => 'Confirmation Mail',
    #     :text => 'Thanking You for registering our website'
    # }
    # mg_client.send_message ENV['domain'], message_params
  end
end
