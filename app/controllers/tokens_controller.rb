class TokensController < ApplicationController

  def get_token
    Twilio::Util::AccessToken.new(
      ENV['ACCOUNT_SID'],
      ENV['API_KEY_SID'],
      ENV['API_KEY_SECRET'],
      3600,
      current_user.username
    )
  end

  def get_grant
    grant = grant = Twilio::JWT::AccessToken::IpMessagingGrant.new
    grant.service_sid = ENV['TWILIO_CHAT_SERVICE_SID']
    token.add_grant grant
  end

  def create
    token = get_token
    grant = get_grant
    token.add_grant(grant)
    render json: {username: current_user.name, token: token.to_jwt}
  end

end
