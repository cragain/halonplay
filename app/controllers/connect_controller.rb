class ConnectController < ApplicationController

  def index
  end
  
  def show
  end
  
  def authenticate
    callback = oauth_callback_connect_index_url
    token = QB_OAUTH_CONSUMER.get_request_token(:oauth_callback => callback)
    session[:qb_request_token] = Marshal.dump(token)
    redirect_to("https://appcenter.intuit.com/Connect/Begin?oauth_token=#{token.token}") and return
  end
  
  def oauth_callback
    Marshal.load(session[:qb_request_token]).get_access_token(:oauth_verifier => params[:oauth_verifier])
    token = @token
    secret = @secret
    realm_id = params['realmId']
    flash.notice = "Your QuickBooks account has been successfully linked."
    @msg = 'Redirecting. Please wait'
    @url = connect_index_path
    render 'close_and_redirect', layout: false
    # store the token, secret & RealmID somewhere for this user, you will need all 3 to work with Quickbooks-Ruby
end

end
