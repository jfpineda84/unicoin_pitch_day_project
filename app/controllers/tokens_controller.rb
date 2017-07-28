class TokensController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def get_grant
    grant = Twilio::JWT::AccessToken::IpMessagingGrant.new
    grant.service_sid = ENV['IPM_SERVICE_SID']
    grant.endpoint_id = "Chatty:#{current_user.name.gsub(" ", "_")}:browser"
    grant
  end

  def create
    if !!current_user
      grant = get_grant
      token = Twilio::JWT::AccessToken.new(
      ENV['ACCOUNT_SID'],
      ENV['API_KEY_SID'],
      ENV['API_KEY_SECRET'],
      [grant],
      identity: current_user.name);

      token.add_grant(grant)
      render json: {username: current_user.name, token: token.to_jwt}
    end
  end

end
