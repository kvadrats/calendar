class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def redirect
  client = Signet::OAuth2::Client.new({
    client_id: ENV.fetch('GOOGLE_API_CLIENT_ID'),
    client_secret: ENV.fetch('GOOGLE_API_CLIENT_SECRET'),
    authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
    scope: Google::Apis::CalendarV3::AUTH_CALENDAR_READONLY,
    redirect_uri: url_for(:action => :callback)
  })

  redirect_to client.authorization_uri.to_s
end
end
