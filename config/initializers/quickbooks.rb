OAUTH_CONSUMER_KEY = "qyprdToJcj9xQgvFMtLFYrxPKwayWb"
OAUTH_CONSUMER_SECRET = "lhWwphmrcbfEKemG8v9s0L2NBWrJwJmrsAmTRG5K"

::QB_OAUTH_CONSUMER = OAuth::Consumer.new(OAUTH_CONSUMER_KEY, OAUTH_CONSUMER_SECRET, {
    :site                 => "https://oauth.intuit.com",
    :request_token_path   => "/oauth/v1/get_request_token",
    :authorize_url        => "https://appcenter.intuit.com/Connect/Begin",
    :access_token_path    => "/oauth/v1/get_access_token"
})