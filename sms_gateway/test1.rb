

module Test1
  require 'rubygems'
  require 'twilio-ruby'
  
  @account_sid = 'ACbb39d37fcd9d44afb932bf0c3f78255e'
  @auth_token  = '3a2ca1b0a52f790df2cac855894dd0f9'
  
  def readmsg()
    puts "asdf--adsf"
  
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    
    
    @account = @client.account
    @sms_message = @account.sms.messages.get('SM188a0fb6eb9fb00e5e5bdac344a98ee4')
    puts @sms_message
  end

  def send_msg()
    # Get your Account Sid and Auth Token from twilio.com/user/account
    account_sid = 'AC7a1405a1cf91223c645557c7c8934166'
    auth_token = '{{ auth_token }}'
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.sms.messages.create(:body => "All in the game, yo",
    :to => "+14108675309",
    :from => "+15005550006")
    puts message.sid
  end

  
  readmsg()
end